.class Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field final synthetic val$dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field final synthetic val$dataType:I

.field final synthetic val$elapsedRealtimeMs:J

.field final synthetic val$mediaEndTimeUs:J

.field final synthetic val$mediaStartTimeUs:J

.field final synthetic val$trackFormat:Lcom/google/android/exoplayer2/Format;

.field final synthetic val$trackSelectionData:Ljava/lang/Object;

.field final synthetic val$trackSelectionReason:I

.field final synthetic val$trackType:I


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iput p3, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$dataType:I

    iput p4, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$trackType:I

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$trackFormat:Lcom/google/android/exoplayer2/Format;

    iput p6, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$trackSelectionReason:I

    iput-object p7, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$trackSelectionData:Ljava/lang/Object;

    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$mediaStartTimeUs:J

    iput-wide p10, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$mediaEndTimeUs:J

    iput-wide p12, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$elapsedRealtimeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 265
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->access$100(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v3, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$dataType:I

    iget v4, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$trackType:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v6, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$trackSelectionReason:I

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$trackSelectionData:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$mediaStartTimeUs:J

    .line 272
    invoke-static {v0, v8, v9}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->access$000(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;J)J

    move-result-wide v8

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->this$0:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-wide v10, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$mediaEndTimeUs:J

    .line 273
    invoke-static {v0, v10, v11}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->access$000(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;J)J

    move-result-wide v10

    iget-wide v12, p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher$1;->val$elapsedRealtimeMs:J

    .line 265
    invoke-interface/range {v1 .. v13}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;->onLoadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    return-void
.end method
