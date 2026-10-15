###### Class com.google.android.gms.internal.ads.zzadg (com.google.android.gms.internal.ads.zzadg)
.class public final Lcom/google/android/gms/internal/ads/zzadg;
.super Lcom/google/android/gms/internal/ads/zzadp;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzadg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final p:Ljava/lang/String;

.field public final q:Z

.field public final r:Z

.field public final s:[Ljava/lang/String;

.field private final t:[Lcom/google/android/gms/internal/ads/zzadp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzadf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzadf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzadg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    const-string v0, "CTOC"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzadp;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzadg;->p:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzadg;->q:Z

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzadg;->r:Z

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzadg;->s:[Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 7
    new-array v1, v0, [Lcom/google/android/gms/internal/ads/zzadp;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzadg;->t:[Lcom/google/android/gms/internal/ads/zzadp;

    :goto_38
    if-ge v2, v0, :cond_4d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadg;->t:[Lcom/google/android/gms/internal/ads/zzadp;

    const-class v3, Lcom/google/android/gms/internal/ads/zzadp;

    .line 8
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzadp;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_4d
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lcom/google/android/gms/internal/ads/zzadp;)V
    .registers 7

    const-string v0, "CTOC"

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzadp;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadg;->p:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzadg;->q:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzadg;->r:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzadg;->s:[Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzadg;->t:[Lcom/google/android/gms/internal/ads/zzadp;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3d

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzadg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_3d

    :cond_10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzadg;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzadg;->q:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzadg;->q:Z

    if-ne v2, v3, :cond_3d

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzadg;->r:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzadg;->r:Z

    if-ne v2, v3, :cond_3d

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadg;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzadg;->p:Ljava/lang/String;

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzew;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadg;->s:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzadg;->s:[Ljava/lang/String;

    .line 3
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadg;->t:[Lcom/google/android/gms/internal/ads/zzadp;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzadg;->t:[Lcom/google/android/gms/internal/ads/zzadp;

    .line 4
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    return v0

    :cond_3d
    :goto_3d
    return v1
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzadg;->q:Z

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzadg;->r:Z

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadg;->p:Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzadg;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzadg;->q:Z

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzadg;->r:Z

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzadg;->s:[Ljava/lang/String;

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzadg;->t:[Lcom/google/android/gms/internal/ads/zzadp;

    .line 5
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzadg;->t:[Lcom/google/android/gms/internal/ads/zzadp;

    .line 6
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v0, :cond_29

    aget-object v3, p2, v2

    .line 7
    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_29
    return-void
.end method
