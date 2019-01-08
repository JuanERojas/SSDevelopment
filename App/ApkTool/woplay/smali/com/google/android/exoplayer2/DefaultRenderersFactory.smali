.class public Lcom/google/android/exoplayer2/DefaultRenderersFactory;
.super Ljava/lang/Object;
.source "DefaultRenderersFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/RenderersFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/DefaultRenderersFactory$ExtensionRendererMode;
    }
.end annotation


# static fields
.field public static final DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS:J = 0x1388L

.field public static final EXTENSION_RENDERER_MODE_OFF:I = 0x0

.field public static final EXTENSION_RENDERER_MODE_ON:I = 0x1

.field public static final EXTENSION_RENDERER_MODE_PREFER:I = 0x2

.field protected static final MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "DefaultRenderersFactory"


# instance fields
.field private final allowedVideoJoiningTimeMs:J

.field private final context:Landroid/content/Context;

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final extensionRendererMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;I)V
    .locals 6
    .param p2    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;I)V"
        }
    .end annotation

    const-wide/16 v4, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 117
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;IJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;IJ)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;IJ)V"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 134
    iput-object p2, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 135
    iput p3, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    .line 136
    iput-wide p4, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    return-void
.end method


# virtual methods
.method protected buildAudioProcessors()[Lcom/google/android/exoplayer2/audio/AudioProcessor;
    .locals 1

    const/4 v0, 0x0

    .line 359
    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    return-object v0
.end method

.method protected buildAudioRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;[Lcom/google/android/exoplayer2/audio/AudioProcessor;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;ILjava/util/ArrayList;)V
    .locals 12
    .param p2    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;[",
            "Lcom/google/android/exoplayer2/audio/AudioProcessor;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    move/from16 v9, p6

    move-object/from16 v10, p7

    .line 235
    new-instance v11, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    .line 236
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object v7

    const/4 v4, 0x1

    move-object v1, v11

    move-object v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioCapabilities;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    .line 235
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v9, :cond_0

    return-void

    .line 241
    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v9, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    :try_start_0
    const-string v6, "com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer"

    .line 249
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 250
    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Landroid/os/Handler;

    aput-object v8, v7, v3

    const-class v8, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    aput-object v8, v7, v5

    const-class v8, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aput-object v8, v7, v2

    .line 251
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 256
    new-array v7, v4, [Ljava/lang/Object;

    aput-object p4, v7, v3

    aput-object p5, v7, v5

    aput-object p3, v7, v2

    .line 257
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/Renderer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v1, 0x1

    .line 258
    :try_start_1
    invoke-virtual {v10, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "DefaultRenderersFactory"

    const-string v6, "Loaded LibopusAudioRenderer."

    .line 259
    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 264
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating Opus extension"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move v7, v1

    :catch_2
    :goto_0
    :try_start_2
    const-string v1, "com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer"

    .line 270
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 271
    new-array v6, v4, [Ljava/lang/Class;

    const-class v8, Landroid/os/Handler;

    aput-object v8, v6, v3

    const-class v8, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    aput-object v8, v6, v5

    const-class v8, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aput-object v8, v6, v2

    .line 272
    invoke-virtual {v1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 277
    new-array v6, v4, [Ljava/lang/Object;

    aput-object p4, v6, v3

    aput-object p5, v6, v5

    aput-object p3, v6, v2

    .line 278
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Renderer;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    add-int/lit8 v6, v7, 0x1

    .line 279
    :try_start_3
    invoke-virtual {v10, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "DefaultRenderersFactory"

    const-string v7, "Loaded LibflacAudioRenderer."

    .line 280
    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 285
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating FLAC extension"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_4
    move v6, v7

    :catch_5
    :goto_1
    :try_start_4
    const-string v1, "com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer"

    .line 292
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 293
    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Landroid/os/Handler;

    aput-object v8, v7, v3

    const-class v8, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    aput-object v8, v7, v5

    const-class v8, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aput-object v8, v7, v2

    .line 294
    invoke-virtual {v1, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 299
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p4, v4, v3

    aput-object p5, v4, v5

    aput-object p3, v4, v2

    .line 300
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Renderer;

    .line 301
    invoke-virtual {v10, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "DefaultRenderersFactory"

    const-string v2, "Loaded FfmpegAudioRenderer."

    .line 302
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_2

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 307
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating FFmpeg extension"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_7
    :goto_2
    return-void
.end method

.method protected buildMetadataRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/metadata/MetadataOutput;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 339
    new-instance p1, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;-><init>(Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected buildTextRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/text/TextOutput;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 324
    new-instance p1, Lcom/google/android/exoplayer2/text/TextRenderer;

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/text/TextRenderer;-><init>(Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected buildVideoRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;ILjava/util/ArrayList;)V
    .locals 14
    .param p2    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;J",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/video/VideoRendererEventListener;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    move/from16 v1, p7

    move-object/from16 v2, p8

    .line 175
    new-instance v13, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    sget-object v5, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    const/4 v9, 0x0

    const/16 v12, 0x32

    move-object v3, v13

    move-object v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p2

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    add-int/lit8 v3, v3, -0x1

    :cond_1
    :try_start_0
    const-string v1, "com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer"

    .line 190
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v5, 0x5

    .line 191
    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-class v7, Landroid/os/Handler;

    aput-object v7, v6, v4

    const-class v7, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    const/4 v10, 0x3

    aput-object v7, v6, v10

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x4

    aput-object v7, v6, v11

    .line 192
    invoke-virtual {v1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 199
    new-array v5, v5, [Ljava/lang/Object;

    .line 202
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    .line 203
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object p5, v5, v4

    aput-object p6, v5, v10

    const/16 v4, 0x32

    .line 206
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v11

    .line 201
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Renderer;

    .line 207
    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "DefaultRenderersFactory"

    const-string v2, "Loaded LibvpxVideoRenderer."

    .line 208
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 213
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating VP9 extension"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    :goto_0
    return-void
.end method

.method public createRenderers(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;)[Lcom/google/android/exoplayer2/Renderer;
    .locals 10

    .line 144
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 145
    iget-object v1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    iget v7, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, v9

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildVideoRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;ILjava/util/ArrayList;)V

    .line 147
    iget-object v1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildAudioProcessors()[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    move-result-object v3

    iget v6, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    move-object v4, p1

    move-object v5, p3

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildAudioRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;[Lcom/google/android/exoplayer2/audio/AudioProcessor;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;ILjava/util/ArrayList;)V

    .line 149
    iget-object v1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    move-object v2, p4

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildTextRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 151
    iget-object v1, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    move-object v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildMetadataRenderers(Landroid/content/Context;Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 153
    iget-object p2, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget p3, p0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->extensionRendererMode:I

    invoke-virtual {p0, p2, p1, p3, v9}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V

    .line 154
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/exoplayer2/Renderer;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/Renderer;

    return-object p1
.end method
