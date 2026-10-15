###### Class com.google.android.gms.internal.ads.zzade (com.google.android.gms.internal.ads.zzade)
.class public final Lcom/google/android/gms/internal/ads/zzade;
.super Lcom/google/android/gms/internal/ads/zzadp;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzade;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final p:Ljava/lang/String;

.field public final q:I

.field public final r:I

.field public final s:J

.field public final t:J

.field private final u:[Lcom/google/android/gms/internal/ads/zzadp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzadd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzadd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzade;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    const-string v0, "CHAP"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzadp;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzade;->p:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzade;->q:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzade;->r:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzade;->s:J

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzade;->t:J

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 8
    new-array v1, v0, [Lcom/google/android/gms/internal/ads/zzadp;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzade;->u:[Lcom/google/android/gms/internal/ads/zzadp;

    const/4 v1, 0x0

    :goto_2e
    if-ge v1, v0, :cond_43

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzade;->u:[Lcom/google/android/gms/internal/ads/zzadp;

    const-class v3, Lcom/google/android/gms/internal/ads/zzadp;

    .line 9
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzadp;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJJ[Lcom/google/android/gms/internal/ads/zzadp;)V
    .registers 10

    const-string v0, "CHAP"

    .line 10
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzadp;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzade;->p:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzade;->q:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzade;->r:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzade;->s:J

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzade;->t:J

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzade;->u:[Lcom/google/android/gms/internal/ads/zzadp;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_43

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzade;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_43

    :cond_10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzade;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzade;->q:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzade;->q:I

    if-ne v2, v3, :cond_43

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzade;->r:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzade;->r:I

    if-ne v2, v3, :cond_43

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzade;->s:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzade;->s:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_43

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzade;->t:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzade;->t:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_43

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzade;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzade;->p:Ljava/lang/String;

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzew;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzade;->u:[Lcom/google/android/gms/internal/ads/zzadp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzade;->u:[Lcom/google/android/gms/internal/ads/zzadp;

    .line 3
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    return v0

    :cond_43
    :goto_43
    return v1
.end method

.method public final hashCode()I
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzade;->q:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzade;->r:I

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzade;->s:J

    long-to-int v2, v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzade;->t:J

    long-to-int v1, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzade;->p:Ljava/lang/String;

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :goto_19
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzade;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzade;->q:I

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzade;->r:I

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzade;->s:J

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzade;->t:J

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzade;->u:[Lcom/google/android/gms/internal/ads/zzadp;

    .line 6
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzade;->u:[Lcom/google/android/gms/internal/ads/zzadp;

    .line 7
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v0, :cond_2e

    aget-object v3, p2, v2

    .line 8
    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_2e
    return-void
.end method
