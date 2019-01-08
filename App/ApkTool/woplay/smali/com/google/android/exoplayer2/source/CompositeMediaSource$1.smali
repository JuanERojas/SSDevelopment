.class Lcom/google/android/exoplayer2/source/CompositeMediaSource$1;
.super Ljava/lang/Object;
.source "CompositeMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/CompositeMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/CompositeMediaSource;

.field final synthetic val$id:Ljava/lang/Object;

.field final synthetic val$mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/CompositeMediaSource;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$1;->this$0:Lcom/google/android/exoplayer2/source/CompositeMediaSource;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$1;->val$id:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$1;->val$mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 2
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 99
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$1;->this$0:Lcom/google/android/exoplayer2/source/CompositeMediaSource;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$1;->val$id:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$1;->val$mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method
