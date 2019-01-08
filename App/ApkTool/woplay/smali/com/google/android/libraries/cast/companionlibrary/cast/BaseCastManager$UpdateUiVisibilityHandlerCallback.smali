.class Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager$UpdateUiVisibilityHandlerCallback;
.super Ljava/lang/Object;
.source "BaseCastManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateUiVisibilityHandlerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;)V
    .locals 0

    .line 1204
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager$UpdateUiVisibilityHandlerCallback;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager$1;)V
    .locals 0

    .line 1204
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager$UpdateUiVisibilityHandlerCallback;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1208
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager$UpdateUiVisibilityHandlerCallback;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/BaseCastManager;->onUiVisibilityChanged(Z)V

    return v1
.end method
