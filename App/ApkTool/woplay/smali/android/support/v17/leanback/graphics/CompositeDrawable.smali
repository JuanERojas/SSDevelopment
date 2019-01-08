.class public Landroid/support/v17/leanback/graphics/CompositeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CompositeDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;,
        Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;
    }
.end annotation


# instance fields
.field mMutated:Z

.field mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mMutated:Z

    .line 70
    new-instance v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    invoke-direct {v0}, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    return-void
.end method

.method constructor <init>(Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mMutated:Z

    .line 74
    iput-object p1, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    return-void
.end method


# virtual methods
.method public addChildDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 102
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-direct {v1, p1, p0}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/support/v17/leanback/graphics/CompositeDrawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 156
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 157
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 158
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-static {v2}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->access$000(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 194
    invoke-virtual {p0}, Landroid/support/v17/leanback/graphics/CompositeDrawable;->getFirstNonNullDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xff

    return v0
.end method

.method public getChildAt(I)Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;
    .locals 1

    .line 123
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 151
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 79
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 116
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-static {p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->access$000(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method final getFirstNonNullDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 203
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    .line 204
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 205
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-static {v3}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->access$000(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 215
    invoke-virtual {p0}, Landroid/support/v17/leanback/graphics/CompositeDrawable;->invalidateSelf()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 84
    iget-boolean v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mMutated:Z

    if-nez v0, :cond_2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 85
    new-instance v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v1, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;-><init>(Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;Landroid/support/v17/leanback/graphics/CompositeDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    .line 86
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 88
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-static {v3}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->access$000(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mMutated:Z

    :cond_2
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 164
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 165
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable;->updateBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public removeChild(I)V
    .locals 1

    .line 130
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public removeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 137
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 138
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 139
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-static {v2}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->access$000(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 140
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-static {p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->access$000(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 141
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 220
    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v17/leanback/graphics/CompositeDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 3

    .line 183
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 184
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 185
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-static {v2}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->access$000(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setChildDrawableAt(ILandroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 109
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-direct {v1, p2, p0}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/support/v17/leanback/graphics/CompositeDrawable;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 3

    .line 170
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 171
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 172
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-static {v2}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->access$000(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 225
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/graphics/CompositeDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method

.method updateBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 232
    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable;->mState:Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 233
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 234
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    .line 235
    invoke-virtual {v2, p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->updateBounds(Landroid/graphics/Rect;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
