###### Class com.google.android.gms.internal.ads.zzgmh (com.google.android.gms.internal.ads.zzgmh)
.class public final Lcom/google/android/gms/internal/ads/zzgmh;
.super Lcom/google/android/gms/internal/ads/zzgqm;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgmh;


# instance fields
.field private zzd:Ljava/lang/String;

.field private zze:Lcom/google/android/gms/internal/ads/zzgqv;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgmh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgmh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgmh;->zzb:Lcom/google/android/gms/internal/ads/zzgmh;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgmh;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgqm;->A(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqm;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmh;->zzd:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqm;->u()Lcom/google/android/gms/internal/ads/zzgqv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmh;->zze:Lcom/google/android/gms/internal/ads/zzgqv;

    return-void
.end method

.method static synthetic I()Lcom/google/android/gms/internal/ads/zzgmh;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgmh;->zzb:Lcom/google/android/gms/internal/ads/zzgmh;

    return-object v0
.end method

.method public static J()Lcom/google/android/gms/internal/ads/zzgmh;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgmh;->zzb:Lcom/google/android/gms/internal/ads/zzgmh;

    return-object v0
.end method


# virtual methods
.method protected final F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_3a

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_22

    if-eq p1, p3, :cond_1c

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_16

    const/4 p2, 0x5

    if-eq p1, p2, :cond_13

    return-object p3

    .line 1
    :cond_13
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgmh;->zzb:Lcom/google/android/gms/internal/ads/zzgmh;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgmg;

    .line 2
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgmg;-><init>(Lcom/google/android/gms/internal/ads/zzgmf;)V

    return-object p1

    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgmh;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgmh;-><init>()V

    return-object p1

    :cond_22
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zzd"

    aput-object v1, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    .line 4
    const-class p2, Lcom/google/android/gms/internal/ads/zzglg;

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzgmh;->zzb:Lcom/google/android/gms/internal/ads/zzgmh;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0208\u0002\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->x(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_3a
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final K()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmh;->zze:Lcom/google/android/gms/internal/ads/zzgqv;

    return-object v0
.end method
