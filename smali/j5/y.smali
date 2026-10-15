###### Class j5.y (j5.y)
.class public final Lj5/y;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lj5/y;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private o:Lj5/e0;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private p:Lj5/x;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private q:Lg5/o0;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lj5/b0;

    invoke-direct {v0}, Lj5/b0;-><init>()V

    sput-object v0, Lj5/y;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lj5/e0;)V
    .registers 8

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj5/e0;

    iput-object v0, p0, Lj5/y;->o:Lj5/e0;

    .line 7
    invoke-virtual {v0}, Lj5/e0;->f()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lj5/y;->p:Lj5/x;

    const/4 v1, 0x0

    .line 9
    :goto_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4b

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj5/a0;

    invoke-virtual {v2}, Lj5/a0;->b4()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 11
    new-instance v2, Lj5/x;

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj5/a0;

    invoke-virtual {v3}, Lj5/a0;->O1()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj5/a0;

    invoke-virtual {v4}, Lj5/a0;->b4()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {p1}, Lj5/e0;->s4()Z

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lj5/x;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, Lj5/y;->p:Lj5/x;

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 15
    :cond_4b
    iget-object v0, p0, Lj5/y;->p:Lj5/x;

    if-nez v0, :cond_5a

    .line 16
    new-instance v0, Lj5/x;

    invoke-virtual {p1}, Lj5/e0;->s4()Z

    move-result v1

    invoke-direct {v0, v1}, Lj5/x;-><init>(Z)V

    iput-object v0, p0, Lj5/y;->p:Lj5/x;

    .line 17
    :cond_5a
    invoke-virtual {p1}, Lj5/e0;->t4()Lg5/o0;

    move-result-object p1

    iput-object p1, p0, Lj5/y;->q:Lg5/o0;

    return-void
.end method

.method constructor <init>(Lj5/e0;Lj5/x;Lg5/o0;)V
    .registers 4
    .param p1    # Lj5/e0;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p2    # Lj5/x;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p3    # Lg5/o0;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj5/y;->o:Lj5/e0;

    .line 3
    iput-object p2, p0, Lj5/y;->p:Lj5/x;

    .line 4
    iput-object p3, p0, Lj5/y;->q:Lg5/o0;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final h()Lg5/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lj5/y;->p:Lj5/x;

    return-object v0
.end method

.method public final t()Lg5/s;
    .registers 2

    .line 1
    iget-object v0, p0, Lj5/y;->o:Lj5/e0;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lj5/y;->t()Lg5/s;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->s(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 4
    invoke-virtual {p0}, Lj5/y;->h()Lg5/c;

    move-result-object v1

    const/4 v2, 0x2

    .line 5
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->s(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 6
    iget-object v1, p0, Lj5/y;->q:Lg5/o0;

    const/4 v2, 0x3

    .line 7
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->s(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    return-void
.end method
