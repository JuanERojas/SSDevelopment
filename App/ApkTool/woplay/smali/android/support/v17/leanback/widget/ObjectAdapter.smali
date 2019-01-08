.class public abstract Landroid/support/v17/leanback/widget/ObjectAdapter;
.super Ljava/lang/Object;
.source "ObjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;,
        Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;
    }
.end annotation


# static fields
.field public static final NO_ID:I = -0x1


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

.field private mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    .line 159
    new-instance v0, Landroid/support/v17/leanback/widget/SinglePresenterSelector;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/SinglePresenterSelector;-><init>(Landroid/support/v17/leanback/widget/Presenter;)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    .line 152
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    return-void
.end method


# virtual methods
.method public abstract get(I)Ljava/lang/Object;
.end method

.method public getId(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getPresenter(Ljava/lang/Object;)Landroid/support/v17/leanback/widget/Presenter;
    .locals 1

    .line 322
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-nez v0, :cond_0

    .line 323
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Presenter selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 325
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/PresenterSelector;->getPresenter(Ljava/lang/Object;)Landroid/support/v17/leanback/widget/Presenter;

    move-result-object p1

    return-object p1
.end method

.method public final getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;
    .locals 1

    .line 199
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    return-object v0
.end method

.method public final hasObserver()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->hasObserver()Z

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .line 295
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mHasStableIds:Z

    return v0
.end method

.method public isImmediateNotifySupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final notifyChanged()V
    .locals 1

    .line 286
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->notifyChanged()V

    return-void
.end method

.method protected final notifyItemMoved(II)V
    .locals 1

    .line 279
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->notifyItemMoved(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 1

    .line 238
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 1

    .line 249
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method protected final notifyItemRangeInserted(II)V
    .locals 1

    .line 259
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->notifyItemRangeInserted(II)V

    return-void
.end method

.method protected final notifyItemRangeRemoved(II)V
    .locals 1

    .line 269
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method protected onHasStableIdsChanged()V
    .locals 0

    return-void
.end method

.method protected onPresenterSelectorChanged()V
    .locals 0

    return-void
.end method

.method public final registerObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V
    .locals 1

    .line 206
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public final setHasStableIds(Z)V
    .locals 1

    .line 303
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mHasStableIds:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 304
    :goto_0
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mHasStableIds:Z

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->onHasStableIdsChanged()V

    :cond_1
    return-void
.end method

.method public final setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 4

    if-nez p1, :cond_0

    .line 173
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Presenter selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 175
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 176
    iget-object v3, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eq v3, p1, :cond_2

    const/4 v1, 0x1

    .line 178
    :cond_2
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eqz v1, :cond_3

    .line 181
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->onPresenterSelectorChanged()V

    :cond_3
    if-eqz v0, :cond_4

    .line 184
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->notifyChanged()V

    :cond_4
    return-void
.end method

.method public abstract size()I
.end method

.method public final unregisterAllObservers()V
    .locals 1

    .line 228
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->unregisterAll()V

    return-void
.end method

.method public final unregisterObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V
    .locals 1

    .line 213
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
