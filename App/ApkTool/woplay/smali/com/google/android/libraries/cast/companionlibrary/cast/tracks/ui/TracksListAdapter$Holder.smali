.class Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter$Holder;
.super Ljava/lang/Object;
.source "TracksListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field private final label:Landroid/widget/TextView;

.field private final radio:Landroid/widget/RadioButton;

.field final synthetic this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter;Landroid/widget/TextView;Landroid/widget/RadioButton;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter$Holder;->this$0:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter$Holder;->label:Landroid/widget/TextView;

    .line 94
    iput-object p3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter$Holder;->radio:Landroid/widget/RadioButton;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter;Landroid/widget/TextView;Landroid/widget/RadioButton;Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter$1;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter$Holder;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter;Landroid/widget/TextView;Landroid/widget/RadioButton;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter$Holder;)Landroid/widget/RadioButton;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter$Holder;->radio:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter$Holder;)Landroid/widget/TextView;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksListAdapter$Holder;->label:Landroid/widget/TextView;

    return-object p0
.end method
