.class public Lcom/google/android/gms/flags/impl/DataUtils$IntegerUtils;
.super Lcom/google/android/gms/flags/impl/DataUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/flags/impl/DataUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntegerUtils"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/flags/impl/DataUtils<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaco:Lcom/google/android/gms/flags/Flag$IntegerFlag;


# direct methods
.method constructor <init>(Lcom/google/android/gms/flags/Flag$IntegerFlag;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/flags/impl/DataUtils;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/flags/impl/DataUtils$IntegerUtils;->zzaco:Lcom/google/android/gms/flags/Flag$IntegerFlag;

    return-void
.end method

.method public static getFromSharedPreferencesNoStrict(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/flags/impl/zzb;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/flags/impl/zzb;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v0}, Lcom/google/android/gms/flags/impl/util/StrictModeUtil;->runWithLaxStrictMode(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "FlagDataUtils"

    const-string v0, "Flag value not available, returning default: "

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method


# virtual methods
.method public getFromJSONObject(Lorg/json/JSONObject;)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/flags/impl/DataUtils$IntegerUtils;->zzaco:Lcom/google/android/gms/flags/Flag$IntegerFlag;

    invoke-virtual {v0}, Lcom/google/android/gms/flags/Flag;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/flags/impl/DataUtils$IntegerUtils;->zzaco:Lcom/google/android/gms/flags/Flag$IntegerFlag;

    invoke-virtual {v1}, Lcom/google/android/gms/flags/Flag;->getDefault()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getFromJSONObject(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/flags/impl/DataUtils$IntegerUtils;->getFromJSONObject(Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getFromSharedPreferences(Landroid/content/SharedPreferences;)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/flags/impl/DataUtils$IntegerUtils;->zzaco:Lcom/google/android/gms/flags/Flag$IntegerFlag;

    invoke-virtual {v0}, Lcom/google/android/gms/flags/Flag;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/flags/impl/DataUtils$IntegerUtils;->zzaco:Lcom/google/android/gms/flags/Flag$IntegerFlag;

    invoke-virtual {v1}, Lcom/google/android/gms/flags/Flag;->getDefault()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getFromSharedPreferences(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/flags/impl/DataUtils$IntegerUtils;->getFromSharedPreferences(Landroid/content/SharedPreferences;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getGservicesValue()Lcom/google/android/gms/common/config/GservicesValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/config/GservicesValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/flags/impl/DataUtils$IntegerUtils;->zzaco:Lcom/google/android/gms/flags/Flag$IntegerFlag;

    invoke-virtual {v0}, Lcom/google/android/gms/flags/Flag;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/flags/impl/DataUtils$IntegerUtils;->zzaco:Lcom/google/android/gms/flags/Flag$IntegerFlag;

    invoke-virtual {v1}, Lcom/google/android/gms/flags/Flag;->getDefault()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/config/GservicesValue;

    move-result-object v0

    return-object v0
.end method

.method public putInSharedPreferences(Landroid/content/SharedPreferences$Editor;Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/flags/impl/DataUtils$IntegerUtils;->zzaco:Lcom/google/android/gms/flags/Flag$IntegerFlag;

    invoke-virtual {v0}, Lcom/google/android/gms/flags/Flag;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public bridge synthetic putInSharedPreferences(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/flags/impl/DataUtils$IntegerUtils;->putInSharedPreferences(Landroid/content/SharedPreferences$Editor;Ljava/lang/Integer;)V

    return-void
.end method

.method public putStringOverrideInSharedPreferences(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/flags/impl/DataUtils$IntegerUtils;->zzaco:Lcom/google/android/gms/flags/Flag$IntegerFlag;

    invoke-virtual {v0}, Lcom/google/android/gms/flags/Flag;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
