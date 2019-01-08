.class public Landroid/support/v17/leanback/widget/CursorObjectAdapter;
.super Landroid/support/v17/leanback/widget/ObjectAdapter;
.source "CursorObjectAdapter.java"


# static fields
.field private static final CACHE_SIZE:I = 0x64


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private final mItemCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMapper:Landroid/support/v17/leanback/database/CursorMapper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter;-><init>()V

    .line 27
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mItemCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/Presenter;)V

    .line 27
    new-instance p1, Landroid/util/LruCache;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Landroid/util/LruCache;-><init>(I)V

    iput-object p1, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mItemCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 27
    new-instance p1, Landroid/util/LruCache;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Landroid/util/LruCache;-><init>(I)V

    iput-object p1, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mItemCache:Landroid/util/LruCache;

    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 58
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_1
    iput-object p1, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    .line 65
    iget-object p1, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mItemCache:Landroid/util/LruCache;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/LruCache;->trimToSize(I)V

    .line 66
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->onCursorChanged()V

    return-void
.end method

.method public close()V
    .locals 1

    .line 157
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    .line 138
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 141
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    .line 144
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mItemCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 148
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mMapper:Landroid/support/v17/leanback/database/CursorMapper;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/database/CursorMapper;->convert(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    .line 149
    iget-object v1, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mItemCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final getCursor()Landroid/database/Cursor;
    .locals 1

    .line 97
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public final getMapper()Landroid/support/v17/leanback/database/CursorMapper;
    .locals 1

    .line 125
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mMapper:Landroid/support/v17/leanback/database/CursorMapper;

    return-object v0
.end method

.method protected final invalidateCache(I)V
    .locals 1

    .line 176
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mItemCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final invalidateCache(II)V
    .locals 0

    add-int/2addr p2, p1

    :goto_0
    if-ge p1, p2, :cond_0

    .line 184
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->invalidateCache(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 168
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isImmediateNotifySupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCursorChanged()V
    .locals 0

    .line 90
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->notifyChanged()V

    return-void
.end method

.method protected onMapperChanged()V
    .locals 0

    return-void
.end method

.method public final setMapper(Landroid/support/v17/leanback/database/CursorMapper;)V
    .locals 1

    .line 105
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mMapper:Landroid/support/v17/leanback/database/CursorMapper;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    iput-object p1, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mMapper:Landroid/support/v17/leanback/database/CursorMapper;

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->onMapperChanged()V

    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .line 130
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 133
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2

    .line 76
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 77
    iget-object p1, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    return-object p1

    .line 79
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    .line 80
    iput-object p1, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    .line 81
    iget-object p1, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mItemCache:Landroid/util/LruCache;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/util/LruCache;->trimToSize(I)V

    .line 82
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->onCursorChanged()V

    return-object v0
.end method
