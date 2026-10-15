###### Class com.google.android.gms.drive.zzr (com.google.android.gms.drive.zzr)
.class public final Lcom/google/android/gms/drive/zzr;
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
            "Lcom/google/android/gms/drive/zzr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private o:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private p:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private r:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private s:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private t:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/drive/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzs;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/zzr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p6    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/drive/zzr;->o:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/google/android/gms/drive/zzr;->p:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/drive/zzr;->q:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/drive/zzr;->r:Ljava/lang/String;

    .line 6
    iput p5, p0, Lcom/google/android/gms/drive/zzr;->s:I

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/drive/zzr;->t:Z

    return-void
.end method

.method private static V3(I)Z
    .registers 1

    packed-switch p0, :pswitch_data_8

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_8
    .packed-switch 0x100
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/drive/zzr;

    if-eq v1, v2, :cond_c

    goto :goto_2f

    :cond_c
    const/4 v1, 0x1

    if-ne p1, p0, :cond_10

    return v1

    .line 2
    :cond_10
    check-cast p1, Lcom/google/android/gms/drive/zzr;

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/drive/zzr;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/drive/zzr;->o:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget v2, p0, Lcom/google/android/gms/drive/zzr;->p:I

    iget v3, p1, Lcom/google/android/gms/drive/zzr;->p:I

    if-ne v2, v3, :cond_2f

    iget v2, p0, Lcom/google/android/gms/drive/zzr;->s:I

    iget v3, p1, Lcom/google/android/gms/drive/zzr;->s:I

    if-ne v2, v3, :cond_2f

    iget-boolean v2, p0, Lcom/google/android/gms/drive/zzr;->t:Z

    iget-boolean p1, p1, Lcom/google/android/gms/drive/zzr;->t:Z

    if-ne v2, p1, :cond_2f

    return v1

    :cond_2f
    :goto_2f
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/drive/zzr;->o:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/drive/zzr;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/drive/zzr;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/drive/zzr;->t:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 10

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;)I

    move-result p2

    .line 2
    iget v0, p0, Lcom/google/android/gms/drive/zzr;->p:I

    invoke-static {v0}, Lcom/google/android/gms/drive/zzr;->V3(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_10

    .line 3
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/drive/zzr;->o:Ljava/lang/String;

    :goto_10
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 4
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->t(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 5
    iget v0, p0, Lcom/google/android/gms/drive/zzr;->p:I

    invoke-static {v0}, Lcom/google/android/gms/drive/zzr;->V3(I)Z

    move-result v0

    const/4 v3, -0x1

    if-nez v0, :cond_20

    const/4 v0, -0x1

    goto :goto_22

    .line 6
    :cond_20
    iget v0, p0, Lcom/google/android/gms/drive/zzr;->p:I

    :goto_22
    const/4 v4, 0x3

    .line 7
    invoke-static {p1, v4, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->l(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    .line 8
    iget-object v5, p0, Lcom/google/android/gms/drive/zzr;->q:Ljava/lang/String;

    .line 9
    invoke-static {p1, v0, v5, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->t(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    .line 10
    iget-object v5, p0, Lcom/google/android/gms/drive/zzr;->r:Ljava/lang/String;

    .line 11
    invoke-static {p1, v0, v5, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->t(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x6

    .line 12
    iget v5, p0, Lcom/google/android/gms/drive/zzr;->s:I

    const/4 v6, 0x1

    if-eqz v5, :cond_3f

    if-eq v5, v6, :cond_3f

    if-eq v5, v1, :cond_3f

    if-eq v5, v4, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v2, 0x1

    :goto_40
    if-nez v2, :cond_43

    goto :goto_44

    :cond_43
    move v3, v5

    .line 13
    :goto_44
    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->l(Landroid/os/Parcel;II)V

    const/4 v0, 0x7

    .line 14
    iget-boolean v1, p0, Lcom/google/android/gms/drive/zzr;->t:Z

    .line 15
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->c(Landroid/os/Parcel;IZ)V

    .line 16
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    return-void
.end method
