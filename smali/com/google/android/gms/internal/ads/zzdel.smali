###### Class com.google.android.gms.internal.ads.zzdel (com.google.android.gms.internal.ads.zzdel)
.class final Lcom/google/android/gms/internal/ads/zzdel;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcqp;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Map;

.field private final d:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final e:Lcom/google/android/gms/internal/ads/zzdgt;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzdgt;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdel;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdel;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdel;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdel;->d:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdel;->e:Lcom/google/android/gms/internal/ads/zzdgt;

    return-void
.end method


# virtual methods
.method public final P(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzeat;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdel;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeat;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_35

    const/4 v0, 0x4

    if-eq p1, v0, :cond_13

    return-object v1

    :cond_13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdel;->c:Ljava/util/Map;

    .line 2
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzedi;

    if-eqz p1, :cond_25

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeau;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzcqr;->a:Lcom/google/android/gms/internal/ads/zzcqr;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzeau;-><init>(Lcom/google/android/gms/internal/ads/zzeat;Lcom/google/android/gms/internal/ads/zzfnj;)V

    goto :goto_2f

    :cond_25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdel;->b:Ljava/util/Map;

    .line 3
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeat;

    if-nez p1, :cond_30

    :goto_2f
    return-object v1

    :cond_30
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcqt;->a(Lcom/google/android/gms/internal/ads/zzeat;)Lcom/google/android/gms/internal/ads/zzeat;

    move-result-object p1

    return-object p1

    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdel;->e:Lcom/google/android/gms/internal/ads/zzdgt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgt;->e()Lcom/google/android/gms/internal/ads/zzbfi;

    move-result-object v0

    if-nez v0, :cond_3e

    goto :goto_51

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdel;->d:Lcom/google/android/gms/internal/ads/zzgxl;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcqp;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcqp;->P(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzeat;

    move-result-object p1

    if-eqz p1, :cond_51

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcqt;->a(Lcom/google/android/gms/internal/ads/zzeat;)Lcom/google/android/gms/internal/ads/zzeat;

    move-result-object p1

    return-object p1

    :cond_51
    :goto_51
    return-object v1
.end method

###### Class com.google.android.gms.internal.ads.zzcqr (com.google.android.gms.internal.ads.zzcqr)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcqr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnj;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzcqr;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcqr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcqr;->a:Lcom/google/android/gms/internal/ads/zzcqr;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqt;

    check-cast p1, Ljava/util/List;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcqt;-><init>(Ljava/util/List;)V

    return-object v0
.end method
