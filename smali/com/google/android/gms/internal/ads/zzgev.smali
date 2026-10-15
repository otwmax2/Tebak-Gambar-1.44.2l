###### Class com.google.android.gms.internal.ads.zzgev (com.google.android.gms.internal.ads.zzgev)
.class public final Lcom/google/android/gms/internal/ads/zzgev;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final b:Lcom/google/android/gms/internal/ads/zzgev;

.field public static final c:Lcom/google/android/gms/internal/ads/zzgev;

.field public static final d:Lcom/google/android/gms/internal/ads/zzgev;

.field public static final e:Lcom/google/android/gms/internal/ads/zzgev;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgev;

    const-string v1, "TINK"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgev;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgev;->b:Lcom/google/android/gms/internal/ads/zzgev;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgev;

    const-string v1, "CRUNCHY"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgev;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgev;->c:Lcom/google/android/gms/internal/ads/zzgev;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgev;

    const-string v1, "LEGACY"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgev;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgev;->d:Lcom/google/android/gms/internal/ads/zzgev;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgev;

    const-string v1, "NO_PREFIX"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgev;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgev;->e:Lcom/google/android/gms/internal/ads/zzgev;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgev;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgev;->a:Ljava/lang/String;

    return-object v0
.end method
