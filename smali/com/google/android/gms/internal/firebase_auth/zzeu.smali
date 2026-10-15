###### Class com.google.android.gms.internal.firebase_auth.zzeu (com.google.android.gms.internal.firebase_auth.zzeu)
.class public final Lcom/google/android/gms/internal/firebase_auth/zzeu;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/firebase_auth/zzeu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private o:Lcom/google/android/gms/internal/firebase_auth/zzey;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzex;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzex;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzeu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzey;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/internal/firebase_auth/zzey;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    if-nez p1, :cond_b

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzey;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_auth/zzey;-><init>()V

    goto :goto_f

    .line 4
    :cond_b
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzey;->V3(Lcom/google/android/gms/internal/firebase_auth/zzey;)Lcom/google/android/gms/internal/firebase_auth/zzey;

    move-result-object p1

    :goto_f
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzeu;->o:Lcom/google/android/gms/internal/firebase_auth/zzey;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzeu;->o:Lcom/google/android/gms/internal/firebase_auth/zzey;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->s(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    return-void
.end method
