.class Lcom/tikilive/ui/speedtest/SpeedTestActivity$2;
.super Ljava/lang/Object;
.source "SpeedTestActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/speedtest/SpeedTestActivity;->loadSpeedTestSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/speedtest/SpeedTestActivity;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$2;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 144
    invoke-static {}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->access$300()Ljava/lang/String;

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

    .line 146
    iget-object p1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$2;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    iget-object v0, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$2;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    .line 147
    invoke-virtual {v0}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/speedtest/SpeedTestActivity$2;->this$0:Lcom/tikilive/ui/speedtest/SpeedTestActivity;

    .line 148
    invoke-virtual {v1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1200bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {p1, v0, v1}, Lcom/tikilive/ui/speedtest/SpeedTestActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
