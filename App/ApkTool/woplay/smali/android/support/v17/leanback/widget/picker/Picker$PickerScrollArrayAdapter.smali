.class Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "Picker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/picker/Picker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PickerScrollArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mColIndex:I

.field private mData:Landroid/support/v17/leanback/widget/picker/PickerColumn;

.field private final mResource:I

.field private final mTextViewResourceId:I

.field final synthetic this$0:Landroid/support/v17/leanback/widget/picker/Picker;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/picker/Picker;Landroid/content/Context;III)V
    .locals 0

    .line 449
    iput-object p1, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->this$0:Landroid/support/v17/leanback/widget/picker/Picker;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 450
    iput p3, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mResource:I

    .line 451
    iput p5, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mColIndex:I

    .line 452
    iput p4, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mTextViewResourceId:I

    .line 453
    iget-object p1, p1, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    iget p2, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mColIndex:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iput-object p1, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mData:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 487
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mData:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mData:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;I)V
    .locals 3

    .line 472
    iget-object v0, p1, Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mData:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p1, Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mData:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mData:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getMinValue()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getLabelFor(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->this$0:Landroid/support/v17/leanback/widget/picker/Picker;

    iget-object p1, p1, Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->this$0:Landroid/support/v17/leanback/widget/picker/Picker;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    iget v2, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mColIndex:I

    .line 476
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mColIndex:I

    .line 475
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/support/v17/leanback/widget/picker/Picker;->setOrAnimateAlpha(Landroid/view/View;ZIZ)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 441
    check-cast p1, Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->onBindViewHolder(Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;
    .locals 2

    .line 458
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 459
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mResource:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 461
    iget p2, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mTextViewResourceId:I

    if-eqz p2, :cond_0

    .line 462
    iget p2, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mTextViewResourceId:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    goto :goto_0

    .line 464
    :cond_0
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    .line 466
    :goto_0
    new-instance v0, Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;

    invoke-direct {v0, p1, p2}, Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;-><init>(Landroid/view/View;Landroid/widget/TextView;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 441
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;)V
    .locals 1

    .line 482
    iget-object p1, p1, Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->this$0:Landroid/support/v17/leanback/widget/picker/Picker;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/picker/Picker;->isActivated()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 441
    check-cast p1, Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->onViewAttachedToWindow(Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;)V

    return-void
.end method
