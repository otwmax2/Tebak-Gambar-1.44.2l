###### Class com.google.android.gms.drive.DriveId (com.google.android.gms.drive.DriveId)
.class public Lcom/google/android/gms/drive/DriveId;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final o:Ljava/lang/String;
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

.field private final r:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private volatile s:Ljava/lang/String;

.field private volatile t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/drive/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJI)V
    .registers 11
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p2    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p4    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->s:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->t:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/drive/DriveId;->o:Ljava/lang/String;

    const-string v0, ""

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    if-nez p1, :cond_1f

    const-wide/16 v2, -0x1

    cmp-long p1, p2, v2

    if-eqz p1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 6
    :cond_1f
    :goto_1f
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    .line 7
    iput-wide p2, p0, Lcom/google/android/gms/drive/DriveId;->p:J

    .line 8
    iput-wide p4, p0, Lcom/google/android/gms/drive/DriveId;->q:J

    .line 9
    iput p6, p0, Lcom/google/android/gms/drive/DriveId;->r:I

    return-void
.end method

.method public static Y3(Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;
    .registers 9
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v7, Lcom/google/android/gms/drive/DriveId;

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/drive/DriveId;-><init>(Ljava/lang/String;JJI)V

    return-object v7
.end method


# virtual methods
.method public V3()Lcom/google/android/gms/drive/DriveFile;
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->r:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/drive/zzbn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/drive/zzbn;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    return-object v0

    .line 3
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This DriveId corresponds to a folder. Call asDriveFolder instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public W3()Lcom/google/android/gms/drive/DriveFolder;
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->r:I

    if-eqz v0, :cond_a

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/drive/zzbs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/drive/zzbs;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    return-object v0

    .line 3
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This DriveId corresponds to a file. Call asDriveFile instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final X3()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->s:Ljava/lang/String;

    if-nez v0, :cond_53

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzfb;->u()Lcom/google/android/gms/internal/drive/zzfb$zza;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/drive/zzfb$zza;->r(I)Lcom/google/android/gms/internal/drive/zzfb$zza;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/drive/DriveId;->o:Ljava/lang/String;

    if-nez v1, :cond_13

    const-string v1, ""

    :cond_13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/drive/zzfb$zza;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/drive/zzfb$zza;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->p:J

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzfb$zza;->p(J)Lcom/google/android/gms/internal/drive/zzfb$zza;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->q:J

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzfb$zza;->q(J)Lcom/google/android/gms/internal/drive/zzfb$zza;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/drive/DriveId;->r:I

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/drive/zzfb$zza;->s(I)Lcom/google/android/gms/internal/drive/zzfb$zza;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->n1()Lcom/google/android/gms/internal/drive/zzlq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzkk;

    check-cast v0, Lcom/google/android/gms/internal/drive/zzfb;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzit;->c()[B

    move-result-object v0

    const/16 v1, 0xa

    .line 10
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DriveId:"

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4c

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_51

    :cond_4c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_51
    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->s:Ljava/lang/String;

    .line 12
    :cond_53
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->s:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_4d

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/drive/DriveId;

    if-eq v1, v2, :cond_c

    goto :goto_4d

    .line 2
    :cond_c
    check-cast p1, Lcom/google/android/gms/drive/DriveId;

    .line 3
    iget-wide v1, p1, Lcom/google/android/gms/drive/DriveId;->q:J

    iget-wide v3, p0, Lcom/google/android/gms/drive/DriveId;->q:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_17

    return v0

    .line 4
    :cond_17
    iget-wide v1, p1, Lcom/google/android/gms/drive/DriveId;->p:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_2e

    iget-wide v5, p0, Lcom/google/android/gms/drive/DriveId;->p:J

    cmp-long v7, v5, v3

    if-nez v7, :cond_2e

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/drive/DriveId;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 6
    :cond_2e
    iget-object v3, p0, Lcom/google/android/gms/drive/DriveId;->o:Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v3, :cond_46

    iget-object p1, p1, Lcom/google/android/gms/drive/DriveId;->o:Ljava/lang/String;

    if-nez p1, :cond_38

    goto :goto_46

    .line 7
    :cond_38
    iget-wide v5, p0, Lcom/google/android/gms/drive/DriveId;->p:J

    cmp-long v7, v1, v5

    if-nez v7, :cond_45

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    return v4

    :cond_45
    return v0

    .line 8
    :cond_46
    :goto_46
    iget-wide v5, p0, Lcom/google/android/gms/drive/DriveId;->p:J

    cmp-long p1, v1, v5

    if-nez p1, :cond_4d

    return v4

    :cond_4d
    :goto_4d
    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/drive/DriveId;->p:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 3
    :cond_f
    iget-wide v0, p0, Lcom/google/android/gms/drive/DriveId;->q:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->p:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    :cond_2e
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_34
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/drive/DriveId;->X3()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;)I

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->o:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->t(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/drive/DriveId;->p:J

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;IJ)V

    .line 4
    iget-wide v0, p0, Lcom/google/android/gms/drive/DriveId;->q:J

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;IJ)V

    .line 5
    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->r:I

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->l(Landroid/os/Parcel;II)V

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    return-void
.end method
