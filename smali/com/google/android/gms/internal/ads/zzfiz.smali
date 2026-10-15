###### Class com.google.android.gms.internal.ads.zzfiz (com.google.android.gms.internal.ads.zzfiz)
.class public final Lcom/google/android/gms/internal/ads/zzfiz;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzfiz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final o:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$VersionField;
    .end annotation
.end field

.field private p:Lcom/google/android/gms/internal/ads/zzans;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private q:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfja;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfja;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfiz;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[B)V
    .registers 3
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfiz;->o:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfiz;->p:Lcom/google/android/gms/internal/ads/zzans;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfiz;->q:[B

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfiz;->zzb()V

    return-void
.end method

.method private final zzb()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiz;->p:Lcom/google/android/gms/internal/ads/zzans;

    if-nez v0, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfiz;->q:[B

    if-nez v1, :cond_9

    goto :goto_a

    :cond_9
    return-void

    :cond_a
    :goto_a
    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfiz;->q:[B

    if-eqz v1, :cond_11

    goto :goto_12

    :cond_11
    return-void

    :cond_12
    :goto_12
    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfiz;->q:[B

    if-nez v1, :cond_19

    goto :goto_21

    .line 2
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - full"

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :goto_21
    if-nez v0, :cond_2f

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiz;->q:[B

    if-nez v0, :cond_2f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final V3()Lcom/google/android/gms/internal/ads/zzans;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiz;->p:Lcom/google/android/gms/internal/ads/zzans;

    if-nez v0, :cond_1d

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiz;->q:[B

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpy;->a()Lcom/google/android/gms/internal/ads/zzgpy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzans;->F0([BLcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzans;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiz;->p:Lcom/google/android/gms/internal/ads/zzans;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiz;->q:[B
    :try_end_13
    .catch Lcom/google/android/gms/internal/ads/zzgqy; {:try_start_4 .. :try_end_13} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_13} :catch_14

    goto :goto_1d

    :catch_14
    move-exception v0

    goto :goto_17

    :catch_16
    move-exception v0

    :goto_17
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 2
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3
    :cond_1d
    :goto_1d
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfiz;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiz;->p:Lcom/google/android/gms/internal/ads/zzans;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfiz;->o:I

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->l(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiz;->q:[B

    if-eqz v0, :cond_f

    goto :goto_15

    .line 3
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfiz;->p:Lcom/google/android/gms/internal/ads/zzans;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgon;->t()[B

    move-result-object v0

    :goto_15
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->g(Landroid/os/Parcel;I[BZ)V

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    return-void
.end method
