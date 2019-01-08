.class Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;
.super Ljava/lang/Object;
.source "MediaSourceEventListenerProxy.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSourceEventListener;


# instance fields
.field private eventListener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    return-void
.end method


# virtual methods
.method getEventListener()Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    return-object v0
.end method

.method public onDownstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V
    .locals 8

    .line 57
    iget-object v0, p0, Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->onDownstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    :cond_0
    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .locals 19

    move-object/from16 v0, p0

    .line 36
    iget-object v1, v0, Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    if-eqz v1, :cond_0

    .line 37
    iget-object v2, v0, Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move-wide/from16 v17, p15

    invoke-interface/range {v2 .. v18}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->onLoadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    :cond_0
    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .locals 19

    move-object/from16 v0, p0

    .line 29
    iget-object v1, v0, Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    if-eqz v1, :cond_0

    .line 30
    iget-object v2, v0, Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move-wide/from16 v17, p15

    invoke-interface/range {v2 .. v18}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->onLoadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    :cond_0
    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .locals 21

    move-object/from16 v0, p0

    .line 43
    iget-object v1, v0, Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    if-eqz v1, :cond_0

    .line 44
    iget-object v2, v0, Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move-wide/from16 v17, p15

    move-object/from16 v19, p17

    move/from16 v20, p18

    invoke-interface/range {v2 .. v20}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->onLoadError(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public onLoadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V
    .locals 15

    move-object v0, p0

    .line 22
    iget-object v1, v0, Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    if-eqz v1, :cond_0

    .line 23
    iget-object v2, v0, Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    invoke-interface/range {v2 .. v14}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->onLoadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    :cond_0
    return-void
.end method

.method public onUpstreamDiscarded(IJJ)V
    .locals 7

    .line 50
    iget-object v0, p0, Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->onUpstreamDiscarded(IJJ)V

    :cond_0
    return-void
.end method

.method setEventListener(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 68
    iput-object p1, p0, Lcom/tikilive/ui/channel/MediaSourceEventListenerProxy;->eventListener:Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    return-void
.end method
