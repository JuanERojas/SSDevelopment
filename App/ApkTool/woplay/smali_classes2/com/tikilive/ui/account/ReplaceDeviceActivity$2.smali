.class Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;
.super Ljava/lang/Object;
.source "ReplaceDeviceActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/account/ReplaceDeviceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

.field final synthetic val$emailTextView:Landroid/widget/TextView;

.field final synthetic val$logoutButton:Landroid/widget/Button;

.field final synthetic val$nameTextView:Landroid/widget/TextView;

.field final synthetic val$thumbImageView:Lde/hdodenhof/circleimageview/CircleImageView;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/account/ReplaceDeviceActivity;Lde/hdodenhof/circleimageview/CircleImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    iput-object p2, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;->val$thumbImageView:Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object p3, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;->val$nameTextView:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;->val$emailTextView:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;->val$logoutButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 71
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 8

    const v0, 0x7f120171

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "status"

    .line 75
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2

    const-string v3, "me"

    .line 78
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "img"

    .line 79
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "medium"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    iget-object v4, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    .line 81
    invoke-virtual {v4, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    .line 82
    invoke-virtual {v3}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;->val$thumbImageView:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 83
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    const-string v3, "firstname"

    .line 85
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "lastname"

    .line 86
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "username"

    .line 87
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "email"

    .line 88
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v3, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;->val$nameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 91
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;->val$nameTextView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_1
    iget-object v3, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;->val$nameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 96
    iget-object v3, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;->val$emailTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;->val$emailTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 98
    iget-object p1, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;->val$logoutButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 99
    iget-object p1, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;->val$logoutButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    .line 101
    iget-object p1, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-static {p1}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->access$000(Lcom/tikilive/ui/account/ReplaceDeviceActivity;)V

    goto/16 :goto_3

    .line 103
    :cond_2
    iget-object v3, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    iget-object v4, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-virtual {v4}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "reason"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 104
    new-instance p1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    const-class v4, Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {p1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    iget-object v3, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-virtual {v3, p1}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 109
    invoke-static {}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p1, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    iget-object v3, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-virtual {v3}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-virtual {v4}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120134

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 112
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    const-class v1, Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    iget-object v0, p0, Lcom/tikilive/ui/account/ReplaceDeviceActivity$2;->this$0:Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/account/ReplaceDeviceActivity;->startActivity(Landroid/content/Intent;)V

    :goto_3
    return-void
.end method
