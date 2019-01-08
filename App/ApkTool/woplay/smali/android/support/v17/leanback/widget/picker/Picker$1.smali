.class Landroid/support/v17/leanback/widget/picker/Picker$1;
.super Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;
.source "Picker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/picker/Picker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/picker/Picker;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/picker/Picker;)V
    .locals 0

    .line 492
    iput-object p1, p0, Landroid/support/v17/leanback/widget/picker/Picker$1;->this$0:Landroid/support/v17/leanback/widget/picker/Picker;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 1

    .line 500
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p4

    check-cast p4, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;

    .line 502
    iget-object p4, p0, Landroid/support/v17/leanback/widget/picker/Picker$1;->this$0:Landroid/support/v17/leanback/widget/picker/Picker;

    iget-object p4, p4, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 503
    iget-object p4, p0, Landroid/support/v17/leanback/widget/picker/Picker$1;->this$0:Landroid/support/v17/leanback/widget/picker/Picker;

    const/4 v0, 0x1

    invoke-virtual {p4, p1, v0}, Landroid/support/v17/leanback/widget/picker/Picker;->updateColumnAlpha(IZ)V

    if-eqz p2, :cond_0

    .line 505
    iget-object p2, p0, Landroid/support/v17/leanback/widget/picker/Picker$1;->this$0:Landroid/support/v17/leanback/widget/picker/Picker;

    iget-object p2, p2, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getMinValue()I

    move-result p2

    add-int/2addr p2, p3

    .line 506
    iget-object p3, p0, Landroid/support/v17/leanback/widget/picker/Picker$1;->this$0:Landroid/support/v17/leanback/widget/picker/Picker;

    invoke-virtual {p3, p1, p2}, Landroid/support/v17/leanback/widget/picker/Picker;->onColumnValueChanged(II)V

    :cond_0
    return-void
.end method
