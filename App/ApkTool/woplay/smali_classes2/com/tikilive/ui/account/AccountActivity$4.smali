.class Lcom/tikilive/ui/account/AccountActivity$4;
.super Ljava/lang/Object;
.source "AccountActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/account/AccountActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/tikilive/ui/account/AccountActivity;

.field final synthetic val$emailTextView:Landroid/widget/TextView;

.field final synthetic val$logoutButton:Landroid/widget/Button;

.field final synthetic val$nameTextView:Landroid/widget/TextView;

.field final synthetic val$thumbImageView:Lde/hdodenhof/circleimageview/CircleImageView;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/account/AccountActivity;Lde/hdodenhof/circleimageview/CircleImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$4;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    iput-object p2, p0, Lcom/tikilive/ui/account/AccountActivity$4;->val$thumbImageView:Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object p3, p0, Lcom/tikilive/ui/account/AccountActivity$4;->val$nameTextView:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/tikilive/ui/account/AccountActivity$4;->val$emailTextView:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/tikilive/ui/account/AccountActivity$4;->val$logoutButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 153
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/account/AccountActivity$4;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 8

    .line 156
    iget-object v0, p0, Lcom/tikilive/ui/account/AccountActivity$4;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/account/AccountActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/tikilive/ui/account/AccountActivity$4;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/account/AccountActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const v0, 0x7f120171

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "status"

    .line 160
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_4

    const-string v3, "me"

    .line 163
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "img"

    .line 164
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "medium"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    iget-object v4, p0, Lcom/tikilive/ui/account/AccountActivity$4;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    .line 166
    invoke-virtual {v4, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    .line 167
    invoke-virtual {v3}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tikilive/ui/account/AccountActivity$4;->val$thumbImageView:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 168
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    const-string v3, "firstname"

    .line 170
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "lastname"

    .line 171
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "username"

    .line 172
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "email"

    .line 173
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 178
    :cond_1
    iget-object v3, p0, Lcom/tikilive/ui/account/AccountActivity$4;->val$nameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 176
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/tikilive/ui/account/AccountActivity$4;->val$nameTextView:Landroid/widget/TextView;

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

    .line 180
    :goto_1
    iget-object v3, p0, Lcom/tikilive/ui/account/AccountActivity$4;->val$nameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 181
    iget-object v3, p0, Lcom/tikilive/ui/account/AccountActivity$4;->val$emailTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$4;->val$emailTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 183
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$4;->val$logoutButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 184
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$4;->val$logoutButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    .line 186
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$4;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/account/AccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "INITIAL_FRAGMENT"

    const/16 v4, 0x101

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v3, 0x102

    if-eq p1, v3, :cond_3

    .line 193
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$4;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-static {p1}, Lcom/tikilive/ui/account/AccountActivity;->access$000(Lcom/tikilive/ui/account/AccountActivity;)V

    goto :goto_2

    .line 189
    :cond_3
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$4;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-static {p1}, Lcom/tikilive/ui/account/AccountActivity;->access$100(Lcom/tikilive/ui/account/AccountActivity;)V

    .line 197
    :goto_2
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$4;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-static {p1}, Lcom/tikilive/ui/account/AccountActivity;->access$000(Lcom/tikilive/ui/account/AccountActivity;)V

    goto/16 :goto_4

    .line 199
    :cond_4
    iget-object v3, p0, Lcom/tikilive/ui/account/AccountActivity$4;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    iget-object v4, p0, Lcom/tikilive/ui/account/AccountActivity$4;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {v4}, Lcom/tikilive/ui/account/AccountActivity;->getResources()Landroid/content/res/Resources;

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

    .line 200
    new-instance p1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tikilive/ui/account/AccountActivity$4;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    const-class v4, Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {p1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    iget-object v3, p0, Lcom/tikilive/ui/account/AccountActivity$4;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {v3, p1}, Lcom/tikilive/ui/account/AccountActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 205
    invoke-static {}, Lcom/tikilive/ui/account/AccountActivity;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object p1, p0, Lcom/tikilive/ui/account/AccountActivity$4;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    iget-object v3, p0, Lcom/tikilive/ui/account/AccountActivity$4;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {v3}, Lcom/tikilive/ui/account/AccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tikilive/ui/account/AccountActivity$4;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {v4}, Lcom/tikilive/ui/account/AccountActivity;->getResources()Landroid/content/res/Resources;

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

    .line 208
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/account/AccountActivity$4;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    const-class v1, Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    iget-object v0, p0, Lcom/tikilive/ui/account/AccountActivity$4;->this$0:Lcom/tikilive/ui/account/AccountActivity;

    invoke-virtual {v0, p1}, Lcom/tikilive/ui/account/AccountActivity;->startActivity(Landroid/content/Intent;)V

    :goto_4
    return-void

    :cond_6
    :goto_5
    return-void
.end method
