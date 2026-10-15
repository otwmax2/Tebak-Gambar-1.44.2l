###### Class com.google.android.gms.drive.zza (com.google.android.gms.drive.zza)
.class public Lcom/google/android/gms/drive/zza;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final o:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final p:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final q:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private volatile r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/drive/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/zza;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .registers 12
    .param p1    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p3    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p5    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/drive/zza;->r:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    cmp-long v4, p1, v2

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    goto :goto_11

    :cond_10
    const/4 v4, 0x0

    .line 3
    :goto_11
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    cmp-long v4, p3, v2

    if-eqz v4, :cond_1a

    const/4 v4, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v4, 0x0

    .line 4
    :goto_1b
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    cmp-long v4, p5, v2

    if-eqz v4, :cond_23

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 5
    :goto_24
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    .line 6
    iput-wide p1, p0, Lcom/google/android/gms/drive/zza;->o:J

    .line 7
    iput-wide p3, p0, Lcom/google/android/gms/drive/zza;->p:J

    .line 8
    iput-wide p5, p0, Lcom/google/android/gms/drive/zza;->q:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_28

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/drive/zza;

    if-eq v1, v2, :cond_c

    goto :goto_28

    .line 2
    :cond_c
    check-cast p1, Lcom/google/android/gms/drive/zza;

    .line 3
    iget-wide v1, p1, Lcom/google/android/gms/drive/zza;->p:J

    iget-wide v3, p0, Lcom/google/android/gms/drive/zza;->p:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_28

    iget-wide v1, p1, Lcom/google/android/gms/drive/zza;->q:J

    iget-wide v3, p0, Lcom/google/android/gms/drive/zza;->q:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_28

    iget-wide v1, p1, Lcom/google/android/gms/drive/zza;->o:J

    iget-wide v3, p0, Lcom/google/android/gms/drive/zza;->o:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_28

    const/4 p1, 0x1

    return p1

    :cond_28
    :goto_28
    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/drive/zza;->o:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/drive/zza;->p:J

    .line 2
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/drive/zza;->q:J

    .line 3
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/drive/zza;->r:Ljava/lang/String;

    if-nez v0, :cond_49

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzez;->u()Lcom/google/android/gms/internal/drive/zzez$zza;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/drive/zzez$zza;->r(I)Lcom/google/android/gms/internal/drive/zzez$zza;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/drive/zza;->o:J

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzez$zza;->o(J)Lcom/google/android/gms/internal/drive/zzez$zza;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/drive/zza;->p:J

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzez$zza;->p(J)Lcom/google/android/gms/internal/drive/zzez$zza;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/drive/zza;->q:J

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzez$zza;->q(J)Lcom/google/android/gms/internal/drive/zzez$zza;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->n1()Lcom/google/android/gms/internal/drive/zzlq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk;

    check-cast v0, Lcom/google/android/gms/internal/drive/zzez;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzit;->c()[B

    move-result-object v0

    const/16 v1, 0xa

    .line 9
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChangeSequenceNumber:"

    .line 10
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_42

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_47

    :cond_42
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_47
    iput-object v0, p0, Lcom/google/android/gms/drive/zza;->r:Ljava/lang/String;

    .line 11
    :cond_49
    iget-object v0, p0, Lcom/google/android/gms/drive/zza;->r:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;)I

    move-result p2

    .line 2
    iget-wide v0, p0, Lcom/google/android/gms/drive/zza;->o:J

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;IJ)V

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/drive/zza;->p:J

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;IJ)V

    .line 4
    iget-wide v0, p0, Lcom/google/android/gms/drive/zza;->q:J

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;IJ)V

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    return-void
.end method
