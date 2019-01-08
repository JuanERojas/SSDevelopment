.class Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager$CastListener;
.super Lcom/google/android/gms/cast/Cast$Listener;
.source "DataCastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CastListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager$CastListener;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;

    invoke-direct {p0}, Lcom/google/android/gms/cast/Cast$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationDisconnected(I)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager$CastListener;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->onApplicationDisconnected(I)V

    return-void
.end method

.method public onApplicationStatusChanged()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager$CastListener;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/DataCastManager;->onApplicationStatusChanged()V

    return-void
.end method
