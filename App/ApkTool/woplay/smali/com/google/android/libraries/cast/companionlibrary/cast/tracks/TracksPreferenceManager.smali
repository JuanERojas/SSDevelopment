.class public Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;
.super Ljava/lang/Object;
.source "TracksPreferenceManager.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final EDGE_TYPE_DEFAULT:Ljava/lang/String; = "EDGE_TYPE_NONE"

.field private static final EDGE_TYPE_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final FONT_FAMILY_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final FONT_FAMILY_SANS_SERIF:Ljava/lang/String; = "FONT_FAMILY_SANS_SERIF"

.field private static final OPACITY_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isInitialized:Z

.field private mCaptionAvailability:Landroid/preference/CheckBoxPreference;

.field private mCaptionBackgroundColorListPreference:Landroid/preference/ListPreference;

.field private mCaptionBackgroundOpacityListPreference:Landroid/preference/ListPreference;

.field private mCaptionEdgeTypeListPreference:Landroid/preference/ListPreference;

.field private mCaptionFontFamilyListPreference:Landroid/preference/ListPreference;

.field private mCaptionFontScaleListPreference:Landroid/preference/ListPreference;

.field private mCaptionTextColorListPreference:Landroid/preference/ListPreference;

.field private mCaptionTextOpacityListPreference:Landroid/preference/ListPreference;

.field private final mContext:Landroid/content/Context;

.field private final mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 49
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->TAG:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->OPACITY_MAPPING:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->FONT_FAMILY_MAPPING:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->EDGE_TYPE_MAPPING:Ljava/util/Map;

    .line 73
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->OPACITY_MAPPING:Ljava/util/Map;

    const-string v1, "FF"

    const-string v2, "100"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->OPACITY_MAPPING:Ljava/util/Map;

    const-string v1, "BF"

    const-string v2, "75"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->OPACITY_MAPPING:Ljava/util/Map;

    const-string v1, "80"

    const-string v2, "50"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->OPACITY_MAPPING:Ljava/util/Map;

    const-string v1, "3F"

    const-string v2, "25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->FONT_FAMILY_MAPPING:Ljava/util/Map;

    const-string v1, "FONT_FAMILY_SANS_SERIF"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->FONT_FAMILY_MAPPING:Ljava/util/Map;

    const-string v1, "FONT_FAMILY_SERIF"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->FONT_FAMILY_MAPPING:Ljava/util/Map;

    const-string v1, "FONT_FAMILY_MONOSPACED_SANS_SERIF"

    const/4 v4, 0x1

    .line 83
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 82
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->EDGE_TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "EDGE_TYPE_NONE"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->EDGE_TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "EDGE_TYPE_OUTLINE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->EDGE_TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "EDGE_TYPE_DROP_SHADOW"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->isInitialized:Z

    .line 93
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    .line 94
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 95
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 96
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getInstance()Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getPreferenceAccessor()Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    return-void
.end method

.method private static combineColorAndOpacity(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const-string v0, "#"

    const-string v1, ""

    .line 378
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getCaptionSummaryForList(Landroid/content/SharedPreferences;IIII)Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 280
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 281
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 280
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 282
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 283
    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    .line 284
    :goto_0
    array-length p5, p3

    if-ge p4, p5, :cond_1

    .line 285
    aget-object p5, p3, p4

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 286
    aget-object p1, p2, p4

    return-object p1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private setCaptionAvailability(Z)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionFontScaleListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 265
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionFontFamilyListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 266
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionTextColorListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 267
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionTextOpacityListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 268
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionEdgeTypeListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 269
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionBackgroundColorListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 270
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionBackgroundOpacityListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/String;
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_background_color:I

    .line 204
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v3, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_background_color_value_default:I

    .line 205
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->getStringFromPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundOpacity()Ljava/lang/String;
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_background_opacity:I

    .line 215
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v3, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_background_opacity_value_default:I

    .line 216
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->getStringFromPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEdgeType()Ljava/lang/String;
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_edge_type:I

    .line 194
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EDGE_TYPE_NONE"

    .line 193
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->getStringFromPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_font_family:I

    .line 150
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FONT_FAMILY_SANS_SERIF"

    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->getStringFromPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontScale()F
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_font_scale:I

    .line 160
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 161
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->getStringFromPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getTextColor()Ljava/lang/String;
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_text_color:I

    .line 172
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v3, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_text_color_value_default:I

    .line 173
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->getStringFromPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextOpacity()Ljava/lang/String;
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_text_opacity:I

    .line 183
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v3, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_text_opacity_value_default:I

    .line 184
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->getStringFromPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextTrackStyle()Lcom/google/android/gms/cast/TextTrackStyle;
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/cast/TextTrackStyle;->fromSystemSettings(Landroid/content/Context;)Lcom/google/android/gms/cast/TextTrackStyle;

    move-result-object v0

    .line 101
    sget-boolean v1, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->IS_KITKAT_OR_ABOVE:Z

    if-eqz v1, :cond_0

    return-object v0

    .line 105
    :cond_0
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->FONT_FAMILY_MAPPING:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->getFontFamily()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontGenericFamily(I)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/TextTrackStyle;->setBackgroundColor(I)V

    .line 107
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->EDGE_TYPE_MAPPING:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->getEdgeType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/TextTrackStyle;->setEdgeType(I)V

    .line 108
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->getFontScale()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontScale(F)V

    .line 109
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1}, Landroid/graphics/Typeface;->isBold()Z

    move-result v1

    .line 110
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const/4 v3, 0x1

    .line 119
    :cond_3
    :goto_0
    invoke-virtual {v0, v3}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontStyle(I)V

    .line 121
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->getTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->getTextOpacity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->combineColorAndOpacity(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 120
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/TextTrackStyle;->setForegroundColor(I)V

    .line 122
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Edge is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->getEdgeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->getBackgroundOpacity()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-static {v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->combineColorAndOpacity(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/TextTrackStyle;->setBackgroundColor(I)V

    return-object v0
.end method

.method public isCaptionEnabled()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 133
    sget-boolean v0, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->IS_KITKAT_OR_ABOVE:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    const-string v1, "captioning"

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 136
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    return v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_enabled:I

    .line 139
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 138
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->getBooleanFromPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 294
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 6

    .line 299
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->isInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 303
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionAvailability:Landroid/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionAvailability:Landroid/preference/CheckBoxPreference;

    .line 304
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_enabled:I

    goto :goto_0

    :cond_1
    sget p2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_disabled:I

    .line 303
    :goto_0
    invoke-virtual {p1, p2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 307
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionAvailability:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->setCaptionAvailability(Z)V

    if-eqz p3, :cond_2

    .line 309
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getInstance()Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionAvailability:Landroid/preference/CheckBoxPreference;

    .line 310
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->onTextTrackEnabledChanged(Z)V

    :cond_2
    return-void

    .line 315
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_font_scale:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 316
    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionFontScaleListPreference:Landroid/preference/ListPreference;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_font_scale:I

    sget v3, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_font_scale_value_default:I

    sget v4, Lcom/google/android/libraries/cast/companionlibrary/R$array;->ccl_prefs_caption_font_scale_names:I

    sget v5, Lcom/google/android/libraries/cast/companionlibrary/R$array;->ccl_prefs_caption_font_scale_values:I

    move-object v0, p0

    move-object v1, p1

    .line 318
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->getCaptionSummaryForList(Landroid/content/SharedPreferences;IIII)Ljava/lang/String;

    move-result-object p1

    .line 317
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 324
    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_font_family:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 325
    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionFontFamilyListPreference:Landroid/preference/ListPreference;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_font_family:I

    sget v3, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_font_family_value_default:I

    sget v4, Lcom/google/android/libraries/cast/companionlibrary/R$array;->ccl_prefs_caption_font_family_names:I

    sget v5, Lcom/google/android/libraries/cast/companionlibrary/R$array;->ccl_prefs_caption_font_family_values:I

    move-object v0, p0

    move-object v1, p1

    .line 327
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->getCaptionSummaryForList(Landroid/content/SharedPreferences;IIII)Ljava/lang/String;

    move-result-object p1

    .line 326
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 333
    :cond_5
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 334
    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionTextColorListPreference:Landroid/preference/ListPreference;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_text_color:I

    sget v3, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_text_color_value_default:I

    sget v4, Lcom/google/android/libraries/cast/companionlibrary/R$array;->ccl_prefs_caption_color_names:I

    sget v5, Lcom/google/android/libraries/cast/companionlibrary/R$array;->ccl_prefs_caption_color_values:I

    move-object v0, p0

    move-object v1, p1

    .line 336
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->getCaptionSummaryForList(Landroid/content/SharedPreferences;IIII)Ljava/lang/String;

    move-result-object p1

    .line 335
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 342
    :cond_6
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_text_opacity:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 343
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_text_opacity:I

    .line 344
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_text_opacity_value_default:I

    .line 345
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-virtual {p1, p2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->getStringFromPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 346
    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionTextOpacityListPreference:Landroid/preference/ListPreference;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->OPACITY_MAPPING:Ljava/util/Map;

    .line 347
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 348
    :cond_7
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_edge_type:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 349
    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionEdgeTypeListPreference:Landroid/preference/ListPreference;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_edge_type:I

    sget v3, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_edge_type_value_default:I

    sget v4, Lcom/google/android/libraries/cast/companionlibrary/R$array;->ccl_prefs_caption_edge_type_names:I

    sget v5, Lcom/google/android/libraries/cast/companionlibrary/R$array;->ccl_prefs_caption_edge_type_values:I

    move-object v0, p0

    move-object v1, p1

    .line 351
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->getCaptionSummaryForList(Landroid/content/SharedPreferences;IIII)Ljava/lang/String;

    move-result-object p1

    .line 350
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 357
    :cond_8
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_background_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 358
    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionBackgroundColorListPreference:Landroid/preference/ListPreference;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_background_color:I

    sget v3, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_background_color_value_default:I

    sget v4, Lcom/google/android/libraries/cast/companionlibrary/R$array;->ccl_prefs_caption_color_names:I

    sget v5, Lcom/google/android/libraries/cast/companionlibrary/R$array;->ccl_prefs_caption_color_values:I

    move-object v0, p0

    move-object v1, p1

    .line 359
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->getCaptionSummaryForList(Landroid/content/SharedPreferences;IIII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 364
    :cond_9
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_background_opacity:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 365
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_background_opacity:I

    .line 366
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_prefs_caption_background_opacity_value_default:I

    .line 367
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-virtual {p1, p2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->getStringFromPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 368
    iget-object p2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionBackgroundOpacityListPreference:Landroid/preference/ListPreference;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->OPACITY_MAPPING:Ljava/util/Map;

    .line 369
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_1
    if-eqz p3, :cond_b

    .line 372
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getInstance()Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->getTextTrackStyle()Lcom/google/android/gms/cast/TextTrackStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->onTextTrackStyleChanged(Lcom/google/android/gms/cast/TextTrackStyle;)V

    :cond_b
    return-void
.end method

.method public setBackgroundColor(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_background_color:I

    .line 199
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->saveStringToPreference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBackgroundOpacity(Ljava/lang/String;)V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_background_opacity:I

    .line 210
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->saveStringToPreference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEdgeType(Ljava/lang/String;)V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_edge_type:I

    .line 189
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->saveStringToPreference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_font_family:I

    .line 145
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->saveStringToPreference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFontScale(Ljava/lang/String;)V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_font_scale:I

    .line 155
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->saveStringToPreference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextColor(Ljava/lang/String;)V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_text_color:I

    .line 167
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->saveStringToPreference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextOpacity(Ljava/lang/String;)V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mPreferenceAccessor:Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_text_opacity:I

    .line 178
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/PreferenceAccessor;->saveStringToPreference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUpPreferences(Landroid/preference/PreferenceScreen;)V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_enabled:I

    .line 221
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionAvailability:Landroid/preference/CheckBoxPreference;

    .line 223
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_font_scale:I

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionFontScaleListPreference:Landroid/preference/ListPreference;

    .line 226
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_font_family:I

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionFontFamilyListPreference:Landroid/preference/ListPreference;

    .line 229
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_text_color:I

    .line 230
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionTextColorListPreference:Landroid/preference/ListPreference;

    .line 232
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_text_opacity:I

    .line 233
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionTextOpacityListPreference:Landroid/preference/ListPreference;

    .line 235
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_edge_type:I

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionEdgeTypeListPreference:Landroid/preference/ListPreference;

    .line 238
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_background_color:I

    .line 239
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionBackgroundColorListPreference:Landroid/preference/ListPreference;

    .line 241
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_background_opacity:I

    .line 242
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mCaptionBackgroundOpacityListPreference:Landroid/preference/ListPreference;

    const/4 p1, 0x1

    .line 243
    iput-boolean p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->isInitialized:Z

    .line 245
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_enabled:I

    .line 246
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 245
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 247
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_font_family:I

    .line 248
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 249
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_font_scale:I

    .line 250
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 251
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_text_color:I

    .line 252
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 253
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_text_opacity:I

    .line 254
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 255
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_edge_type:I

    .line 256
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 257
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_background_color:I

    .line 258
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 259
    iget-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_key_caption_background_opacity:I

    .line 260
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method
