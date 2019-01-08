.class Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService$3;
.super Ljava/lang/Object;
.source "ReconnectionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService$3;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 164
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setUpEndTimer(): stopping ReconnectionService since reached the end of allotted time"

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService$3;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->access$200(Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;)V

    return-void
.end method
