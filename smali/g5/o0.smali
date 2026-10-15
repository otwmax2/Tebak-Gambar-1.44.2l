###### Class g5.o0 (g5.o0)
.class public Lg5/o0;
.super Lg5/c0;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg5/o0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final o:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final p:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final q:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final r:Lcom/google/android/gms/internal/firebase_auth/zzfy;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final s:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final t:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final u:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lg5/q0;

    invoke-direct {v0}, Lg5/q0;-><init>()V

    sput-object v0, Lg5/o0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase_auth/zzfy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/firebase_auth/zzfy;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lg5/c0;-><init>()V

    .line 2
    iput-object p1, p0, Lg5/o0;->o:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lg5/o0;->p:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lg5/o0;->q:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lg5/o0;->r:Lcom/google/android/gms/internal/firebase_auth/zzfy;

    .line 6
    iput-object p5, p0, Lg5/o0;->s:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lg5/o0;->t:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lg5/o0;->u:Ljava/lang/String;

    return-void
.end method

.method public static b4(Lg5/o0;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzfy;
    .registers 13

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lg5/o0;->r:Lcom/google/android/gms/internal/firebase_auth/zzfy;

    if-eqz v0, :cond_8

    return-object v0

    .line 3
    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzfy;

    .line 4
    invoke-virtual {p0}, Lg5/c0;->Z3()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lg5/c0;->Y3()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lg5/d;->V3()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 7
    invoke-virtual {p0}, Lg5/c0;->a4()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 8
    iget-object v9, p0, Lg5/o0;->s:Ljava/lang/String;

    .line 9
    iget-object v10, p0, Lg5/o0;->u:Ljava/lang/String;

    move-object v1, v0

    move-object v8, p1

    .line 10
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/firebase_auth/zzfy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c4(Lcom/google/android/gms/internal/firebase_auth/zzfy;)Lg5/o0;
    .registers 10

    const-string v0, "Must specify a non-null webSignInCredential"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lg5/o0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v5, p0

    invoke-direct/range {v1 .. v8}, Lg5/o0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase_auth/zzfy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public V3()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lg5/o0;->o:Ljava/lang/String;

    return-object v0
.end method

.method public W3()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lg5/o0;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final X3()Lg5/d;
    .registers 10

    .line 1
    new-instance v8, Lg5/o0;

    iget-object v1, p0, Lg5/o0;->o:Ljava/lang/String;

    iget-object v2, p0, Lg5/o0;->p:Ljava/lang/String;

    iget-object v3, p0, Lg5/o0;->q:Ljava/lang/String;

    iget-object v4, p0, Lg5/o0;->r:Lcom/google/android/gms/internal/firebase_auth/zzfy;

    iget-object v5, p0, Lg5/o0;->s:Ljava/lang/String;

    iget-object v6, p0, Lg5/o0;->t:Ljava/lang/String;

    iget-object v7, p0, Lg5/o0;->u:Ljava/lang/String;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lg5/o0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase_auth/zzfy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public Y3()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lg5/o0;->q:Ljava/lang/String;

    return-object v0
.end method

.method public Z3()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lg5/o0;->p:Ljava/lang/String;

    return-object v0
.end method

.method public a4()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lg5/o0;->t:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lg5/d;->V3()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->t(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 4
    invoke-virtual {p0}, Lg5/c0;->Z3()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 5
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->t(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 6
    invoke-virtual {p0}, Lg5/c0;->Y3()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 7
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->t(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 8
    iget-object v1, p0, Lg5/o0;->r:Lcom/google/android/gms/internal/firebase_auth/zzfy;

    const/4 v2, 0x4

    .line 9
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->s(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 10
    iget-object p2, p0, Lg5/o0;->s:Ljava/lang/String;

    const/4 v1, 0x5

    .line 11
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->t(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 12
    invoke-virtual {p0}, Lg5/c0;->a4()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x6

    .line 13
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->t(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 14
    iget-object p2, p0, Lg5/o0;->u:Ljava/lang/String;

    const/4 v1, 0x7

    .line 15
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->t(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    return-void
.end method
