.class Lcom/tikilive/ui/upgrade/ChoosePackageActivity$1;
.super Ljava/lang/Object;
.source "ChoosePackageActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->loadPackages()V
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
.field final synthetic this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$1;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 93
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    const-string v0, "status"

    .line 98
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    const-string v0, "plans"

    .line 101
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 103
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 104
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 106
    new-instance v2, Lcom/tikilive/ui/model/Package;

    invoke-direct {v2}, Lcom/tikilive/ui/model/Package;-><init>()V

    const-string v3, "id"

    .line 107
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tikilive/ui/model/Package;->setId(I)V

    const-string v3, "name"

    .line 108
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tikilive/ui/model/Package;->setName(Ljava/lang/String;)V

    const-string v3, "description"

    .line 109
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tikilive/ui/model/Package;->setDescription(Ljava/lang/String;)V

    const-string v3, "price"

    .line 110
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tikilive/ui/model/Package;->setPrice(D)V

    const-string v3, "has_subscription"

    .line 111
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tikilive/ui/model/Package;->setHasSubscription(Z)V

    .line 113
    iget-object v1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$1;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    invoke-static {v1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->access$000(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$1;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    invoke-static {p1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->access$000(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 117
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$1;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    const-string v0, "Content not available for purchase"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->access$100(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$1;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    invoke-static {v0, p1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->access$200(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;Lcom/tikilive/ui/fragment/ErrorFragment;)V

    .line 122
    invoke-virtual {p1}, Lcom/tikilive/ui/fragment/ErrorFragment;->setButtonDefaultAction()V

    return-void

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$1;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f12017e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tikilive/ui/fragment/LoadingFragment;->newInstance(Ljava/lang/String;)Lcom/tikilive/ui/fragment/LoadingFragment;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$1;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a008e

    .line 128
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 129
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 131
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$1;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    invoke-static {p1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->access$000(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/model/Package;

    .line 132
    iget-object v1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$1;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    invoke-static {v1, v0}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->access$300(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;Lcom/tikilive/ui/model/Package;)V

    goto :goto_1

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$1;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status"

    .line 137
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reason"

    .line 138
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {v0, v1, p1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->access$100(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object p1

    .line 140
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$1;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    invoke-static {v0, p1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->access$200(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;Lcom/tikilive/ui/fragment/ErrorFragment;)V

    .line 141
    invoke-virtual {p1}, Lcom/tikilive/ui/fragment/ErrorFragment;->setButtonDefaultAction()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 144
    invoke-static {}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->access$400()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$1;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$1;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    .line 147
    invoke-virtual {v0}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$1;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    .line 148
    invoke-virtual {v1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {p1, v0, v1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->access$100(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object p1

    .line 150
    iget-object v0, p0, Lcom/tikilive/ui/upgrade/ChoosePackageActivity$1;->this$0:Lcom/tikilive/ui/upgrade/ChoosePackageActivity;

    invoke-static {v0, p1}, Lcom/tikilive/ui/upgrade/ChoosePackageActivity;->access$200(Lcom/tikilive/ui/upgrade/ChoosePackageActivity;Lcom/tikilive/ui/fragment/ErrorFragment;)V

    .line 151
    invoke-virtual {p1}, Lcom/tikilive/ui/fragment/ErrorFragment;->setButtonDefaultAction()V

    :cond_4
    :goto_3
    return-void
.end method
