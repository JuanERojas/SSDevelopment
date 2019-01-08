.class public Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;
.super Ljava/lang/Object;
.source "GuidedActionAdapterGroup.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final DEBUG_EDIT:Z = false

.field private static final TAG_EDIT:Ljava/lang/String; = "EditableAction"


# instance fields
.field mAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/support/v17/leanback/widget/GuidedActionAdapter;",
            "Landroid/support/v17/leanback/widget/GuidedActionAdapter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

.field private mImeOpened:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mAdapters:Ljava/util/ArrayList;

    return-void
.end method

.method private updateTextIntoAction(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/widget/TextView;)V
    .locals 2

    .line 179
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    .line 180
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getDescriptionView()Landroid/widget/TextView;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 181
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getEditDescription()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GuidedAction;->setEditDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GuidedAction;->setDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object p1

    if-ne p2, p1, :cond_3

    .line 187
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getEditTitle()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 188
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GuidedAction;->setEditTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GuidedAction;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public addAdpter(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V
    .locals 2

    .line 46
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mAdapters:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 48
    iput-object p0, p1, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    :cond_0
    if-eqz p2, :cond_1

    .line 51
    iput-object p0, p2, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    :cond_1
    return-void
.end method

.method public closeIme(Landroid/view/View;)V
    .locals 3

    .line 141
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mImeOpened:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mImeOpened:Z

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 146
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

    invoke-interface {p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;->onImeClose()V

    :cond_0
    return-void
.end method

.method public fillAndGoNext(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/widget/TextView;)V
    .locals 7

    .line 161
    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->findSubChildViewHolder(Landroid/view/View;)Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    move-result-object v0

    .line 162
    invoke-direct {p0, v0, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->updateTextIntoAction(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/widget/TextView;)V

    .line 163
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->performOnActionClick(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    .line 164
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;->onGuidedActionEditedAndProceed(Landroid/support/v17/leanback/widget/GuidedAction;)J

    move-result-wide v1

    .line 165
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getGuidedActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    const-wide/16 v5, -0x3

    cmp-long v3, v1, v5

    if-eqz v3, :cond_0

    .line 167
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/GuidedAction;->getId()J

    move-result-wide v5

    cmp-long v3, v1, v5

    if-eqz v3, :cond_0

    .line 168
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v1, v2}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->focusToNextAction(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedAction;J)Z

    move-result v4

    :cond_0
    if-nez v4, :cond_1

    .line 173
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->closeIme(Landroid/view/View;)V

    .line 174
    iget-object p1, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method

.method public fillAndStay(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/widget/TextView;)V
    .locals 3

    .line 151
    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->findSubChildViewHolder(Landroid/view/View;)Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    move-result-object v0

    .line 152
    invoke-direct {p0, v0, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->updateTextIntoAction(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/widget/TextView;)V

    .line 153
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;->onGuidedActionEditCanceled(Landroid/support/v17/leanback/widget/GuidedAction;)V

    .line 154
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getGuidedActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    .line 155
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->closeIme(Landroid/view/View;)V

    .line 156
    iget-object p1, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method focusToNextAction(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedAction;J)Z
    .locals 8

    const-wide/16 v0, -0x2

    cmp-long v2, p3, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 73
    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->indexOf(Landroid/support/v17/leanback/widget/GuidedAction;)I

    move-result p2

    if-gez p2, :cond_0

    return v4

    :cond_0
    add-int/2addr p2, v3

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 82
    :goto_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getCount()I

    move-result v2

    cmp-long v5, p3, v0

    if-nez v5, :cond_2

    :goto_1
    if-ge p2, v2, :cond_3

    .line 84
    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getItem(I)Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/GuidedAction;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge p2, v2, :cond_3

    .line 88
    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getItem(I)Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/GuidedAction;->getId()J

    move-result-wide v5

    cmp-long v7, v5, p3

    if-eqz v7, :cond_3

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    if-ge p2, v2, :cond_6

    .line 94
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getGuidedActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    move-result-object p3

    .line 95
    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p2

    check-cast p2, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    if-eqz p2, :cond_5

    .line 97
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v17/leanback/widget/GuidedAction;->hasTextEditable()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 100
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->openIme(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V

    goto :goto_3

    .line 104
    :cond_4
    iget-object p1, p2, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->closeIme(Landroid/view/View;)V

    .line 105
    iget-object p1, p2, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :goto_3
    return v3

    :cond_5
    return v4

    .line 112
    :cond_6
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->getNextAdapter(Landroid/support/v17/leanback/widget/GuidedActionAdapter;)Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    move-result-object p1

    if-nez p1, :cond_1

    return v4
.end method

.method public getNextAdapter(Landroid/support/v17/leanback/widget/GuidedActionAdapter;)Landroid/support/v17/leanback/widget/GuidedActionAdapter;
    .locals 3

    const/4 v0, 0x0

    .line 56
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 57
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 58
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    .line 59
    iget-object p1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public openIme(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 2

    .line 122
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getGuidedActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setEditingMode(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    .line 123
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getEditingView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 124
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->isInEditingText()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "input_method"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const/4 v1, 0x0

    .line 133
    invoke-virtual {p2, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 134
    iget-boolean p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mImeOpened:Z

    if-nez p1, :cond_1

    .line 135
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mImeOpened:Z

    .line 136
    iget-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

    invoke-interface {p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;->onImeOpen()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public setEditListener(Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;)V
    .locals 0

    .line 66
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->mEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;

    return-void
.end method
