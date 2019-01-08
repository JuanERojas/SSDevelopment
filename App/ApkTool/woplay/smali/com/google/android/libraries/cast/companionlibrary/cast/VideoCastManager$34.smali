.class Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$34;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source "VideoCastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->registerCaptionListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)V
    .locals 0

    .line 2874
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$34;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnabledChanged(Z)V
    .locals 1

    .line 2877
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$34;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->onTextTrackEnabledChanged(Z)V

    return-void
.end method

.method public onFontScaleChanged(F)V
    .locals 1

    .line 2888
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$34;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$34;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$1400(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->getTextTrackStyle()Lcom/google/android/gms/cast/TextTrackStyle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->onTextTrackStyleChanged(Lcom/google/android/gms/cast/TextTrackStyle;)V

    return-void
.end method

.method public onLocaleChanged(Ljava/util/Locale;)V
    .locals 1

    .line 2893
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$34;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->onTextTrackLocaleChanged(Ljava/util/Locale;)V

    return-void
.end method

.method public onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 1
    .param p1    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2883
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$34;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager$34;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->access$1400(Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;)Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->getTextTrackStyle()Lcom/google/android/gms/cast/TextTrackStyle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->onTextTrackStyleChanged(Lcom/google/android/gms/cast/TextTrackStyle;)V

    return-void
.end method
