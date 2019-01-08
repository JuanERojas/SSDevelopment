.class public Landroid/support/v17/leanback/widget/GuidedActionAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "GuidedActionAdapter.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;,
        Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;,
        Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;,
        Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;,
        Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;,
        Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUG_EDIT:Z = false

.field static final TAG:Ljava/lang/String; = "GuidedActionAdapter"

.field static final TAG_EDIT:Ljava/lang/String; = "EditableAction"


# instance fields
.field private final mActionEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;

.field private final mActionOnFocusListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;

.field private final mActionOnKeyListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;

.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation
.end field

.field private mClickListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;

.field mDiffCallback:Landroid/support/v17/leanback/widget/DiffCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v17/leanback/widget/DiffCallback<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation
.end field

.field mGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

.field private final mIsSubAdapter:Z

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field final mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;Landroid/support/v17/leanback/widget/GuidedActionsStylist;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;",
            "Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;",
            "Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;",
            "Landroid/support/v17/leanback/widget/GuidedActionsStylist;",
            "Z)V"
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 110
    new-instance v0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$1;-><init>(Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez p1, :cond_0

    .line 143
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    .line 145
    iput-object p2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mClickListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;

    .line 146
    iput-object p4, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    .line 147
    new-instance p1, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;

    invoke-direct {p1, p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;-><init>(Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionOnKeyListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;

    .line 148
    new-instance p1, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;

    invoke-direct {p1, p0, p3}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;-><init>(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;)V

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionOnFocusListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;

    .line 149
    new-instance p1, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;

    invoke-direct {p1, p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;-><init>(Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;

    .line 150
    iput-boolean p5, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mIsSubAdapter:Z

    if-nez p5, :cond_1

    .line 152
    invoke-static {}, Landroid/support/v17/leanback/widget/GuidedActionDiffCallback;->getInstance()Landroid/support/v17/leanback/widget/GuidedActionDiffCallback;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mDiffCallback:Landroid/support/v17/leanback/widget/DiffCallback;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Landroid/support/v17/leanback/widget/GuidedActionAdapter;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    return-object p0
.end method

.method private setupListeners(Landroid/widget/EditText;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "EscapeNorth=1;"

    .line 314
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 316
    instance-of v0, p1, Landroid/support/v17/leanback/widget/ImeKeyMonitor;

    if-eqz v0, :cond_0

    .line 317
    check-cast p1, Landroid/support/v17/leanback/widget/ImeKeyMonitor;

    .line 318
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionEditListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;

    invoke-interface {p1, v0}, Landroid/support/v17/leanback/widget/ImeKeyMonitor;->setImeKeyListener(Landroid/support/v17/leanback/widget/ImeKeyMonitor$ImeKeyListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public findSubChildViewHolder(Landroid/view/View;)Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;
    .locals 3

    .line 396
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 400
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 401
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 402
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 403
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 406
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    :cond_2
    return-object v1
.end method

.method public getActions()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 230
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGuidedActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;
    .locals 1

    .line 255
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    return-object v0
.end method

.method public getItem(I)Landroid/support/v17/leanback/widget/GuidedAction;
    .locals 1

    .line 239
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/GuidedAction;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 341
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 288
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getItemViewType(Landroid/support/v17/leanback/widget/GuidedAction;)I

    move-result p1

    return p1
.end method

.method getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 292
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mIsSubAdapter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getSubActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public handleCheckedActions(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 8

    .line 412
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result v1

    .line 414
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    .line 418
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    .line 419
    iget-object v6, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v17/leanback/widget/GuidedAction;

    if-eq v6, v0, :cond_0

    .line 420
    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/GuidedAction;->getCheckSetId()I

    move-result v7

    if-ne v7, v1, :cond_0

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/GuidedAction;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 421
    invoke-virtual {v6, v3}, Landroid/support/v17/leanback/widget/GuidedAction;->setChecked(Z)V

    .line 423
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    check-cast v6, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    if-eqz v6, :cond_0

    .line 425
    iget-object v7, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v7, v6, v3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onAnimateItemChecked(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 432
    :cond_1
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v1, 0x1

    .line 433
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedAction;->setChecked(Z)V

    .line 434
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0, p1, v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onAnimateItemChecked(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    goto :goto_1

    :cond_2
    if-ne v1, v2, :cond_3

    .line 437
    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/GuidedAction;->setChecked(Z)V

    .line 438
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0, p1, v3}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onAnimateItemChecked(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public indexOf(Landroid/support/v17/leanback/widget/GuidedAction;)I
    .locals 1

    .line 248
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 328
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    return-void

    .line 331
    :cond_0
    check-cast p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    .line 332
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v17/leanback/widget/GuidedAction;

    .line 333
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onBindViewHolder(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Landroid/support/v17/leanback/widget/GuidedAction;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 300
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;

    move-result-object p1

    .line 301
    iget-object p2, p1, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->itemView:Landroid/view/View;

    .line 302
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionOnKeyListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnKeyListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 303
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionOnFocusListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 306
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getEditableTitleView()Landroid/widget/EditText;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->setupListeners(Landroid/widget/EditText;)V

    .line 307
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getEditableDescriptionView()Landroid/widget/EditText;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->setupListeners(Landroid/widget/EditText;)V

    return-object p1
.end method

.method public performOnActionClick(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;)V
    .locals 1

    .line 445
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mClickListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mClickListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;->getAction()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;->onGuidedActionClicked(Landroid/support/v17/leanback/widget/GuidedAction;)V

    :cond_0
    return-void
.end method

.method public setActions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;)V"
        }
    .end annotation

    .line 172
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mIsSubAdapter:Z

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->collapseAction(Z)V

    .line 175
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionOnFocusListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;->unFocus()V

    .line 176
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mDiffCallback:Landroid/support/v17/leanback/widget/DiffCallback;

    if-eqz v0, :cond_1

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 183
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    new-instance p1, Landroid/support/v17/leanback/widget/GuidedActionAdapter$2;

    invoke-direct {p1, p0, v0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$2;-><init>(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Ljava/util/List;)V

    invoke-static {p1}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object p1

    .line 217
    invoke-virtual {p1, p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 220
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 221
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public setClickListener(Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;)V
    .locals 0

    .line 263
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mClickListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;

    return-void
.end method

.method public setDiffCallback(Landroid/support/v17/leanback/widget/DiffCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v17/leanback/widget/DiffCallback<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;)V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mDiffCallback:Landroid/support/v17/leanback/widget/DiffCallback;

    return-void
.end method

.method public setFocusListener(Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;)V
    .locals 1

    .line 271
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mActionOnFocusListener:Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionOnFocusListener;->setFocusListener(Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;)V

    return-void
.end method
