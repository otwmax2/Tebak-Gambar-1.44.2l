###### Class com.google.android.gms.drive.zzu (com.google.android.gms.drive.zzu)
.class public abstract Lcom/google/android/gms/drive/zzu;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# instance fields
.field private volatile transient o:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/drive/zzu;->o:Z

    return-void
.end method


# virtual methods
.method protected abstract V3(Landroid/os/Parcel;I)V
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/drive/zzu;->o:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->n(Z)V

    .line 3
    iput-boolean v1, p0, Lcom/google/android/gms/drive/zzu;->o:Z

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/drive/zzu;->V3(Landroid/os/Parcel;I)V

    return-void
.end method
