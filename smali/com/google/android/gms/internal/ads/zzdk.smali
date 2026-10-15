###### Class com.google.android.gms.internal.ads.zzdk (com.google.android.gms.internal.ads.zzdk)
.class public final Lcom/google/android/gms/internal/ads/zzdk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final b:Lcom/google/android/gms/internal/ads/zzdk;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field public static final e:Lcom/google/android/gms/internal/ads/zzn;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzfqk;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdk;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqk;->u()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdk;-><init>(Ljava/util/List;J)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdk;->b:Lcom/google/android/gms/internal/ads/zzdk;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdk;->c:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdk;->d:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdj;->a:Lcom/google/android/gms/internal/ads/zzdj;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdk;->e:Lcom/google/android/gms/internal/ads/zzn;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;J)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfqk;->s(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdk;->a:Lcom/google/android/gms/internal/ads/zzfqk;

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdj (com.google.android.gms.internal.ads.zzdj)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzn;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzdj;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdj;->a:Lcom/google/android/gms/internal/ads/zzdj;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
