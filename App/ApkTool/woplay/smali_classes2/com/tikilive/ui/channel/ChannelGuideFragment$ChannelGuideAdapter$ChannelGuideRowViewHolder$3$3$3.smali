.class Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3$3;
.super Ljava/lang/Object;
.source "ChannelGuideFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;->onClick(Landroid/view/View;)V
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
.field final synthetic this$4:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;)V
    .locals 0

    .line 1420
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3$3;->this$4:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1420
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3$3;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "status"

    .line 1424
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 1427
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3$3;->this$4:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;->this$3:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;->val$event:Lcom/tikilive/ui/model/Event;

    sget-object v1, Lcom/tikilive/ui/model/EventDvrStatus;->NONE:Lcom/tikilive/ui/model/EventDvrStatus;

    invoke-virtual {p1, v1}, Lcom/tikilive/ui/model/Event;->setDvrStatus(Lcom/tikilive/ui/model/EventDvrStatus;)V

    .line 1430
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3$3;->this$4:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;->this$3:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-virtual {p1}, Lcom/tikilive/ui/channel/ChannelActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/tikilive/ui/guide/ChannelGuideContentProvider;->CONTENT_URI_DVRS:Landroid/net/Uri;

    .line 1431
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3$3;->this$4:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;

    iget-object v2, v2, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;->this$3:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;

    iget-object v2, v2, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;->val$event:Lcom/tikilive/ui/model/Event;

    .line 1432
    invoke-virtual {v2}, Lcom/tikilive/ui/model/Event;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1433
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 1430
    invoke-virtual {p1, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1438
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3$3;->this$4:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;->this$3:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->access$2200(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;)Lcom/tikilive/ui/listener/OnChannelGuideSelectedEventListener;

    move-result-object v1

    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3$3;->this$4:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;->this$3:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;

    iget-object v2, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;->val$channel:Lcom/tikilive/ui/model/Channel;

    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3$3;->this$4:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;->this$3:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;

    iget-object v3, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;->val$event:Lcom/tikilive/ui/model/Event;

    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3$3;->this$4:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;->this$3:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;

    iget v4, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;->val$start:I

    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3$3;->this$4:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;->this$3:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;

    iget v5, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;->val$end:I

    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3$3;->this$4:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;->this$3:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->access$1600(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;)I

    move-result v6

    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3$3;->this$4:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;->this$3:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;

    iget-object v7, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;->val$eventContainer:Landroid/widget/RelativeLayout;

    invoke-interface/range {v1 .. v7}, Lcom/tikilive/ui/listener/OnChannelGuideSelectedEventListener;->channelGuideSelected(Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/model/Event;IIILandroid/widget/RelativeLayout;)V

    .line 1440
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3$3;->this$4:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;->this$3:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3$3;->this$4:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;->this$3:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    const v2, 0x7f12011f

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/tikilive/ui/helper/Utils;->showRecordingToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1442
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3$3;->this$4:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;->this$3:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    invoke-static {p1}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$2000(Lcom/tikilive/ui/channel/ChannelGuideFragment;)Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$PopupEventDetailsViewHolder;->mPopupEventCloseButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_1

    :cond_0
    const-string v1, "status"

    .line 1444
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1445
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

    .line 1446
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

    .line 1448
    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3$3;->this$4:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;->this$3:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v1, p1, v0}, Lcom/tikilive/ui/helper/Utils;->showRecordingToast(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1451
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1452
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3$3;->this$4:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;->this$3:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    iget-object p1, p1, Lcom/tikilive/ui/channel/ChannelGuideFragment;->mChannelActivity:Lcom/tikilive/ui/channel/ChannelActivity;

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3$3;->this$4:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3$3;->this$3:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder$3;->this$2:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$ChannelGuideRowViewHolder;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    iget-object v1, v1, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;->this$0:Lcom/tikilive/ui/channel/ChannelGuideFragment;

    const v2, 0x7f120134

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/channel/ChannelGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/tikilive/ui/helper/Utils;->showRecordingToast(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method