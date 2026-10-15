###### Class com.google.android.gms.internal.ads.zzauj (com.google.android.gms.internal.ads.zzauj)
.class public final Lcom/google/android/gms/internal/ads/zzauj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/internal/ads/zzaug;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaul;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaul;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzauj;->b:Lcom/google/android/gms/internal/ads/zzaug;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzauj;->a:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_24

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 2
    check-cast v4, Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 7
    array-length v0, p1

    if-nez v0, :cond_34

    const-string p1, ""

    goto :goto_83

    :cond_34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaui;

    .line 8
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaui;-><init>()V

    new-instance v1, Ljava/util/PriorityQueue;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzauj;->a:I

    new-instance v4, Lcom/google/android/gms/internal/ads/zzauh;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/ads/zzauh;-><init>(Lcom/google/android/gms/internal/ads/zzauj;)V

    .line 9
    invoke-direct {v1, v3, v4}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    const/4 v3, 0x0

    .line 10
    :goto_46
    array-length v4, p1

    if-ge v3, v4, :cond_5b

    .line 11
    aget-object v4, p1, v3

    .line 12
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/zzauk;->b(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v4

    .line 13
    array-length v5, v4

    if-eqz v5, :cond_58

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzauj;->a:I

    const/4 v6, 0x6

    .line 14
    invoke-static {v4, v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzauo;->c([Ljava/lang/String;IILjava/util/PriorityQueue;)V

    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 15
    :cond_5b
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaun;

    :try_start_6b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauj;->b:Lcom/google/android/gms/internal/ads/zzaug;

    .line 16
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaun;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaug;->b(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaui;->b:Landroid/util/Base64OutputStream;

    .line 17
    invoke-virtual {v2, v1}, Landroid/util/Base64OutputStream;->write([B)V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_78} :catch_79

    goto :goto_5f

    :catch_79
    move-exception p1

    const-string v1, "Error while writing hash to byteStream"

    .line 18
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :cond_7f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaui;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_83
    return-object p1
.end method
