###### Class com.google.android.gms.internal.ads.zzffm (com.google.android.gms.internal.ads.zzffm)
.class public final Lcom/google/android/gms/internal/ads/zzffm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfft;

.field private final b:Landroid/webkit/WebView;

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/Map;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/android/gms/internal/ads/zzffn;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzfft;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzffn;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzffm;->c:Ljava/util/List;

    new-instance p3, Ljava/util/HashMap;

    .line 2
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzffm;->d:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->a:Lcom/google/android/gms/internal/ads/zzfft;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzffm;->b:Landroid/webkit/WebView;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzffm;->g:Lcom/google/android/gms/internal/ads/zzffn;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzffm;->f:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->e:Ljava/lang/String;

    return-void
.end method

.method public static b(Lcom/google/android/gms/internal/ads/zzfft;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffm;
    .registers 12

    .line 1
    new-instance p3, Lcom/google/android/gms/internal/ads/zzffm;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzffn;->p:Lcom/google/android/gms/internal/ads/zzffn;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v6, ""

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzffm;-><init>(Lcom/google/android/gms/internal/ads/zzfft;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzffn;)V

    return-object p3
.end method

.method public static c(Lcom/google/android/gms/internal/ads/zzfft;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffm;
    .registers 12

    .line 1
    new-instance p3, Lcom/google/android/gms/internal/ads/zzffm;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzffn;->r:Lcom/google/android/gms/internal/ads/zzffn;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v6, ""

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzffm;-><init>(Lcom/google/android/gms/internal/ads/zzfft;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzffn;)V

    return-object p3
.end method


# virtual methods
.method public final a()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/zzffn;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->g:Lcom/google/android/gms/internal/ads/zzffn;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/zzfft;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->a:Lcom/google/android/gms/internal/ads/zzfft;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/Map;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
