.class public Lcom/tikilive/ui/helper/AudioFocusHelper;
.super Ljava/lang/Object;
.source "AudioFocusHelper.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;
    }
.end annotation


# static fields
.field private static final MEDIA_VOLUME_DEFAULT:F = 1.0f

.field private static final MEDIA_VOLUME_DUCK:F = 0.2f


# instance fields
.field private final audioManager:Landroid/media/AudioManager;

.field private focusRequest:Landroid/media/AudioFocusRequest;

.field private playOnAudioFocus:Z

.field private final player:Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/tikilive/ui/helper/AudioFocusHelper;->focusRequest:Landroid/media/AudioFocusRequest;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/tikilive/ui/helper/AudioFocusHelper;->playOnAudioFocus:Z

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/tikilive/ui/helper/AudioFocusHelper;->audioManager:Landroid/media/AudioManager;

    .line 24
    iput-object p2, p0, Lcom/tikilive/ui/helper/AudioFocusHelper;->player:Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;

    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 2

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/tikilive/ui/helper/AudioFocusHelper;->focusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/tikilive/ui/helper/AudioFocusHelper;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/tikilive/ui/helper/AudioFocusHelper;->focusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/helper/AudioFocusHelper;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :goto_0
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 85
    :pswitch_0
    invoke-virtual {p0}, Lcom/tikilive/ui/helper/AudioFocusHelper;->abandonAudioFocus()V

    .line 86
    iput-boolean v0, p0, Lcom/tikilive/ui/helper/AudioFocusHelper;->playOnAudioFocus:Z

    .line 87
    iget-object p1, p0, Lcom/tikilive/ui/helper/AudioFocusHelper;->player:Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;

    invoke-interface {p1}, Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;->stop()V

    goto :goto_1

    .line 79
    :pswitch_1
    iget-object p1, p0, Lcom/tikilive/ui/helper/AudioFocusHelper;->player:Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;

    invoke-interface {p1}, Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 80
    iput-boolean v1, p0, Lcom/tikilive/ui/helper/AudioFocusHelper;->playOnAudioFocus:Z

    .line 81
    iget-object p1, p0, Lcom/tikilive/ui/helper/AudioFocusHelper;->player:Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;

    invoke-interface {p1}, Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;->pause()V

    goto :goto_1

    .line 76
    :pswitch_2
    iget-object p1, p0, Lcom/tikilive/ui/helper/AudioFocusHelper;->player:Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;

    const v0, 0x3e4ccccd    # 0.2f

    invoke-interface {p1, v0}, Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;->setVolume(F)V

    goto :goto_1

    .line 67
    :cond_0
    iget-boolean p1, p0, Lcom/tikilive/ui/helper/AudioFocusHelper;->playOnAudioFocus:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tikilive/ui/helper/AudioFocusHelper;->player:Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;

    invoke-interface {p1}, Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    .line 68
    iget-object p1, p0, Lcom/tikilive/ui/helper/AudioFocusHelper;->player:Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;

    invoke-interface {p1}, Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;->play()V

    goto :goto_0

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/tikilive/ui/helper/AudioFocusHelper;->player:Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;

    invoke-interface {p1}, Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 70
    iget-object p1, p0, Lcom/tikilive/ui/helper/AudioFocusHelper;->player:Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v1}, Lcom/tikilive/ui/helper/AudioFocusHelper$AudioFocusAwarePlayer;->setVolume(F)V

    .line 72
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/tikilive/ui/helper/AudioFocusHelper;->playOnAudioFocus:Z

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public requestAudioFocus()Z
    .locals 4

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    .line 31
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v3, 0xe

    .line 32
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v3, 0x2

    .line 33
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 35
    new-instance v3, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v3, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 36
    invoke-virtual {v3, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0, p0}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/helper/AudioFocusHelper;->focusRequest:Landroid/media/AudioFocusRequest;

    .line 41
    iget-object v0, p0, Lcom/tikilive/ui/helper/AudioFocusHelper;->audioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/tikilive/ui/helper/AudioFocusHelper;->focusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/helper/AudioFocusHelper;->audioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v0, p0, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    :goto_0
    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public shouldPlayOnAudioFocus()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/tikilive/ui/helper/AudioFocusHelper;->playOnAudioFocus:Z

    return v0
.end method
