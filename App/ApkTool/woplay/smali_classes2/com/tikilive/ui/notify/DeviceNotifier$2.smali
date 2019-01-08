.class Lcom/tikilive/ui/notify/DeviceNotifier$2;
.super Ljava/lang/Object;
.source "DeviceNotifier.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tikilive/ui/notify/DeviceNotifier;->sendNotification(JLcom/tikilive/ui/notify/DeviceNotifier$OnNotifyDeviceListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tikilive/ui/notify/DeviceNotifier;


# direct methods
.method constructor <init>(Lcom/tikilive/ui/notify/DeviceNotifier;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/tikilive/ui/notify/DeviceNotifier$2;->this$0:Lcom/tikilive/ui/notify/DeviceNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 121
    invoke-static {}, Lcom/tikilive/ui/notify/DeviceNotifier;->access$800()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "VolleyError"

    :goto_0
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
