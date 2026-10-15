###### Class com.google.android.gms.internal.ads.zzawy (com.google.android.gms.internal.ads.zzawy)
.class public final Lcom/google/android/gms/internal/ads/zzawy;
.super Lcom/google/android/gms/internal/ads/zzgqm;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzawy;


# instance fields
.field private zzd:I

.field private zze:Z

.field private zzf:Z

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzawy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzawy;->zzb:Lcom/google/android/gms/internal/ads/zzawy;

    const-class v1, Lcom/google/android/gms/internal/ads/zzawy;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgqm;->A(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqm;-><init>()V

    return-void
.end method

.method public static I()Lcom/google/android/gms/internal/ads/zzawx;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzawy;->zzb:Lcom/google/android/gms/internal/ads/zzawy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->h()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzawx;

    return-object v0
.end method

.method static synthetic J()Lcom/google/android/gms/internal/ads/zzawy;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzawy;->zzb:Lcom/google/android/gms/internal/ads/zzawy;

    return-object v0
.end method

.method static synthetic K(Lcom/google/android/gms/internal/ads/zzawy;Z)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzd:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzawy;->zze:Z

    return-void
.end method

.method static synthetic L(Lcom/google/android/gms/internal/ads/zzawy;Z)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzd:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzf:Z

    return-void
.end method

.method static synthetic M(Lcom/google/android/gms/internal/ads/zzawy;I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzawy;->zzg:I

    return-void
.end method


# virtual methods
.method protected final F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_3e

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_22

    if-eq p1, v0, :cond_1c

    const/4 p2, 0x0

    if-eq p1, p3, :cond_16

    const/4 p3, 0x5

    if-eq p1, p3, :cond_13

    return-object p2

    .line 1
    :cond_13
    sget-object p1, Lcom/google/android/gms/internal/ads/zzawy;->zzb:Lcom/google/android/gms/internal/ads/zzawy;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzawx;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzawx;-><init>(Lcom/google/android/gms/internal/ads/zzawl;)V

    return-object p1

    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzawy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzawy;-><init>()V

    return-object p1

    :cond_22
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v2, "zzd"

    aput-object v2, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/ads/zzawy;->zzb:Lcom/google/android/gms/internal/ads/zzawy;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1007\u0001\u0003\u100b\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->x(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_3e
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
