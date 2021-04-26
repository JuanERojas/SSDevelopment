.class abstract Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TimelineListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/twitter/sdk/android/core/models/Identifiable;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final delegate:Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/Timeline;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/tweetui/Timeline<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;

    invoke-direct {v0, p2}, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;-><init>(Lcom/twitter/sdk/android/tweetui/Timeline;)V

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate<",
            "TT;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    if-nez p1, :cond_0

    .line 48
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->context:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->delegate:Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;

    const/4 p1, 0x0

    .line 52
    invoke-virtual {p2, p1}, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;->refresh(Lcom/twitter/sdk/android/core/Callback;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->delegate:Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/twitter/sdk/android/core/models/Identifiable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->delegate:Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;->getItem(I)Lcom/twitter/sdk/android/core/models/Identifiable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->getItem(I)Lcom/twitter/sdk/android/core/models/Identifiable;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->delegate:Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->delegate:Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->delegate:Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;->notifyDataSetInvalidated()V

    return-void
.end method

.method public refresh(Lcom/twitter/sdk/android/core/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/tweetui/TimelineResult<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->delegate:Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;->refresh(Lcom/twitter/sdk/android/core/Callback;)V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->delegate:Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->delegate:Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/internal/TimelineDelegate;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method