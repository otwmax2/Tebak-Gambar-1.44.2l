###### Class com.google.android.gms.internal.ads.zzgfs (com.google.android.gms.internal.ads.zzgfs)
.class public final Lcom/google/android/gms/internal/ads/zzgfs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final b:Lcom/google/android/gms/internal/ads/zzgfs;

.field public static final c:Lcom/google/android/gms/internal/ads/zzgfs;

.field public static final d:Lcom/google/android/gms/internal/ads/zzgfs;

.field public static final e:Lcom/google/android/gms/internal/ads/zzgfs;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfs;

    const-string v1, "TINK"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgfs;->b:Lcom/google/android/gms/internal/ads/zzgfs;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfs;

    const-string v1, "CRUNCHY"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgfs;->c:Lcom/google/android/gms/internal/ads/zzgfs;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfs;

    const-string v1, "LEGACY"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgfs;->d:Lcom/google/android/gms/internal/ads/zzgfs;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfs;

    const-string v1, "NO_PREFIX"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgfs;->e:Lcom/google/android/gms/internal/ads/zzgfs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfs;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfs;->a:Ljava/lang/String;

    return-object v0
.end method
