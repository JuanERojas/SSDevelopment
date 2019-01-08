.class Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$5;
.super Ljava/lang/Object;
.source "DvrItemDetailsFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->remove()V
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
.field final synthetic this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

.field final synthetic val$dvrItem:Lcom/tikilive/ui/model/Dvr;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;Lcom/tikilive/ui/model/Dvr;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$5;->this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    iput-object p2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$5;->val$dvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 341
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$5;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "status"

    .line 345
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 347
    invoke-static {}, Lcom/tikilive/ui/model/DvrProvider;->getInstance()Lcom/tikilive/ui/model/DvrProvider;

    move-result-object p1

    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$5;->val$dvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Event;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/tikilive/ui/model/DvrProvider;->removeRequestById(I)V

    .line 350
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$5;->this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    invoke-virtual {p1}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/tikilive/ui/guide/ChannelGuideContentProvider;->CONTENT_URI_DVRS:Landroid/net/Uri;

    .line 351
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$5;->val$dvrItem:Lcom/tikilive/ui/model/Dvr;

    .line 352
    invoke-virtual {v2}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Event;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 353
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 350
    invoke-virtual {p1, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 359
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$5;->val$dvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Dvr;->getStatus()Lcom/tikilive/ui/model/DvrStatus;

    move-result-object p1

    sget-object v1, Lcom/tikilive/ui/model/DvrStatus;->PENDING:Lcom/tikilive/ui/model/DvrStatus;

    if-ne p1, v1, :cond_0

    const p1, 0x7f12011f

    goto :goto_0

    :cond_0
    const p1, 0x7f120120

    .line 364
    :goto_0
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$5;->this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    invoke-virtual {v1}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 367
    invoke-static {}, Lcom/tikilive/ui/model/DvrProvider;->getInstance()Lcom/tikilive/ui/model/DvrProvider;

    move-result-object p1

    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$5;->val$dvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Dvr;->getEvent()Lcom/tikilive/ui/model/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tikilive/ui/model/Event;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/tikilive/ui/model/DvrProvider;->removeRequestById(I)V

    .line 370
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$5;->this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    invoke-virtual {p1}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 371
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$5;->this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    invoke-virtual {v1}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tikilive/ui/dvr/DvrLibraryActivity;

    invoke-virtual {v1}, Lcom/tikilive/ui/dvr/DvrLibraryActivity;->hasFailedRequests()Z

    move-result v1

    .line 372
    invoke-virtual {p1, v2, v3}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 373
    iget-object v2, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$5;->val$dvrItem:Lcom/tikilive/ui/model/Dvr;

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Dvr;->getStatus()Lcom/tikilive/ui/model/DvrStatus;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;->newInstance(ZLcom/tikilive/ui/model/DvrStatus;)Lcom/tikilive/ui/dvr/DvrLibraryActivityFragment;

    move-result-object v1

    .line 374
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v2, 0x7f0a008e

    .line 375
    invoke-virtual {p1, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 376
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_2

    :cond_1
    const-string v1, "status"

    .line 379
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "reason"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 383
    iget-object v1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$5;->this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    invoke-virtual {v1}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 386
    invoke-static {}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    iget-object p1, p0, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment$5;->this$0:Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;

    invoke-virtual {p1}, Lcom/tikilive/ui/dvr/DvrItemDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v1, 0x7f120134

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method
