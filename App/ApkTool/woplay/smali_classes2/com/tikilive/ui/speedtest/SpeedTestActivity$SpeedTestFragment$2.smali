.class Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$2;
.super Ljava/lang/Object;
.source "SpeedTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$2;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 260
    iget-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$2;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    invoke-static {p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->access$1000(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)V

    .line 261
    iget-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$2;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    invoke-static {p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->access$700(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 262
    iget-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$2;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    invoke-static {p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->access$700(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    .line 263
    iget-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment$2;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;

    invoke-static {p1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;->access$800(Lcom/tikilive/ui/speedtest/SpeedTestActivity$SpeedTestFragment;)Landroid/widget/Button;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
