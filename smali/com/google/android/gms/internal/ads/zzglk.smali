###### Class com.google.android.gms.internal.ads.zzglk (com.google.android.gms.internal.ads.zzglk)
.class public final Lcom/google/android/gms/internal/ads/zzglk;
.super Lcom/google/android/gms/internal/ads/zzgqm;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzglk;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/ads/zzgky;

.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzglk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzglk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzglk;->zzb:Lcom/google/android/gms/internal/ads/zzglk;

    const-class v1, Lcom/google/android/gms/internal/ads/zzglk;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgqm;->A(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqm;-><init>()V

    return-void
.end method

.method public static K()Lcom/google/android/gms/internal/ads/zzglj;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzglk;->zzb:Lcom/google/android/gms/internal/ads/zzglk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->h()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzglj;

    return-object v0
.end method

.method static synthetic L()Lcom/google/android/gms/internal/ads/zzglk;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzglk;->zzb:Lcom/google/android/gms/internal/ads/zzglk;

    return-object v0
.end method

.method static synthetic N(Lcom/google/android/gms/internal/ads/zzglk;Lcom/google/android/gms/internal/ads/zzgky;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzglk;->zzd:Lcom/google/android/gms/internal/ads/zzgky;

    return-void
.end method

.method static synthetic O(Lcom/google/android/gms/internal/ads/zzglk;Lcom/google/android/gms/internal/ads/zzgme;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgme;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzglk;->zzg:I

    return-void
.end method

.method static synthetic P(Lcom/google/android/gms/internal/ads/zzglk;I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzglk;->zzf:I

    return-void
.end method

.method static synthetic S(Lcom/google/android/gms/internal/ads/zzglk;I)V
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgla;->a(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzglk;->zze:I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzglk;->zzb:Lcom/google/android/gms/internal/ads/zzglk;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzglj;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzglj;-><init>(Lcom/google/android/gms/internal/ads/zzglh;)V

    return-object p1

    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzglk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzglk;-><init>()V

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
    sget-object p2, Lcom/google/android/gms/internal/ads/zzglk;->zzb:Lcom/google/android/gms/internal/ads/zzglk;

    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\u000c\u0003\u000b\u0004\u000c"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->x(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_3e
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final I()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzglk;->zzf:I

    return v0
.end method

.method public final J()Lcom/google/android/gms/internal/ads/zzgky;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzglk;->zzd:Lcom/google/android/gms/internal/ads/zzgky;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgky;->L()Lcom/google/android/gms/internal/ads/zzgky;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final M()Lcom/google/android/gms/internal/ads/zzgme;
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzglk;->zzg:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgme;->c(I)Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgme;->u:Lcom/google/android/gms/internal/ads/zzgme;

    :cond_a
    return-object v0
.end method

.method public final Q()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzglk;->zzd:Lcom/google/android/gms/internal/ads/zzgky;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final R()I
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzglk;->zze:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_13

    if-eq v0, v3, :cond_14

    if-eq v0, v2, :cond_11

    if-eq v0, v1, :cond_f

    const/4 v1, 0x0

    goto :goto_14

    :cond_f
    const/4 v1, 0x5

    goto :goto_14

    :cond_11
    const/4 v1, 0x4

    goto :goto_14

    :cond_13
    const/4 v1, 0x2

    :cond_14
    :goto_14
    if-nez v1, :cond_17

    return v3

    :cond_17
    return v1
.end method
