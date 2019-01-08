.class Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$DataRow;
.super Ljava/lang/Object;
.source "ChannelGuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataRow"
.end annotation


# instance fields
.field public channel:Lcom/tikilive/ui/model/Channel;

.field public events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tikilive/ui/model/Event;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;


# direct methods
.method public constructor <init>(Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;Lcom/tikilive/ui/model/Channel;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tikilive/ui/model/Channel;",
            "Ljava/util/ArrayList<",
            "Lcom/tikilive/ui/model/Event;",
            ">;)V"
        }
    .end annotation

    .line 1043
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$DataRow;->this$1:Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1044
    iput-object p2, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$DataRow;->channel:Lcom/tikilive/ui/model/Channel;

    .line 1045
    iput-object p3, p0, Lcom/tikilive/ui/channel/ChannelGuideFragment$ChannelGuideAdapter$DataRow;->events:Ljava/util/ArrayList;

    return-void
.end method
