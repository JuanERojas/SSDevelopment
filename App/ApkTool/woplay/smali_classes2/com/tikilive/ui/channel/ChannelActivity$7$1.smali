.class Lcom/tikilive/ui/channel/ChannelActivity$7$1;
.super Ljava/lang/Object;
.source "ChannelActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/channel/ChannelActivity$7;->onResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/tikilive/ui/model/Channel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tikilive/ui/channel/ChannelActivity$7;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/channel/ChannelActivity$7;)V
    .locals 0

    .line 967
    iput-object p1, p0, Lcom/tikilive/ui/channel/ChannelActivity$7$1;->this$1:Lcom/tikilive/ui/channel/ChannelActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/model/Channel;)I
    .locals 0

    .line 970
    invoke-virtual {p1}, Lcom/tikilive/ui/model/Channel;->getNumber()I

    move-result p1

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Channel;->getNumber()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 967
    check-cast p1, Lcom/tikilive/ui/model/Channel;

    check-cast p2, Lcom/tikilive/ui/model/Channel;

    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/channel/ChannelActivity$7$1;->compare(Lcom/tikilive/ui/model/Channel;Lcom/tikilive/ui/model/Channel;)I

    move-result p1

    return p1
.end method
