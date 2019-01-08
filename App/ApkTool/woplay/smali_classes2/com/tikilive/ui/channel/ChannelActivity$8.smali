.class Lcom/tikilive/ui/channel/ChannelActivity$8;
.super Ljava/lang/Object;
.source "ChannelActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelActivity;->loadRadioChannels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/channel/ChannelActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelActivity;)V
    .locals 0

    .line 977
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$8;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 980
    invoke-static {}, Lcom/tikilive/ui/channel/ChannelActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$8;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity$8;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    .line 983
    invoke-virtual {v0}, Lcom/tikilive/ui/channel/ChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/channel/ChannelActivity$8;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    .line 984
    invoke-virtual {v1}, Lcom/tikilive/ui/channel/ChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1200bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 982
    invoke-static {p1, v0, v1}, Lcom/tikilive/ui/channel/ChannelActivity;->access$800(Lcom/tikilive/ui/channel/ChannelActivity;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/tikilive/ui/fragment/ErrorFragment;

    move-result-object p1

    .line 986
    iget-object v0, p0, Lcom/tikilive/ui/channel/ChannelActivity$8;->this$0:Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-static {v0, p1}, Lcom/tikilive/ui/channel/ChannelActivity;->access$900(Lcom/tikilive/ui/channel/ChannelActivity;Lcom/tikilive/ui/fragment/ErrorFragment;)V

    .line 987
    invoke-virtual {p1}, Lcom/tikilive/ui/fragment/ErrorFragment;->setButtonDefaultAction()V

    return-void
.end method
