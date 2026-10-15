###### Class com.google.android.gms.drive.query.internal.zzb (com.google.android.gms.drive.query.internal.zzb)
.class public final Lcom/google/android/gms/drive/query/internal/zzb;
.super Lcom/google/android/gms/drive/query/internal/zza;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/drive/query/internal/zza;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/drive/query/internal/zzc;


# instance fields
.field private final o:Lcom/google/android/gms/drive/query/internal/zzx;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final p:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field private final q:Lcom/google/android/gms/drive/metadata/MetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/MetadataField<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzb;->CREATOR:Lcom/google/android/gms/drive/query/internal/zzc;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/drive/query/internal/zzx;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/drive/query/internal/zzx;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/drive/query/internal/zza;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzb;->o:Lcom/google/android/gms/drive/query/internal/zzx;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/zzb;->p:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/drive/query/internal/a;->a(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)Lcom/google/android/gms/drive/metadata/MetadataField;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzb;->q:Lcom/google/android/gms/drive/metadata/MetadataField;

    return-void
.end method


# virtual methods
.method public final r1(Lcom/google/android/gms/drive/query/internal/zzj;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/query/internal/zzj<",
            "TF;>;)TF;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzb;->o:Lcom/google/android/gms/drive/query/internal/zzx;

    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/zzb;->q:Lcom/google/android/gms/drive/metadata/MetadataField;

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/zzb;->p:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->V3(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/drive/query/internal/zzj;->c(Lcom/google/android/gms/drive/query/internal/zzx;Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/zzb;->o:Lcom/google/android/gms/drive/query/internal/zzx;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->s(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/zzb;->p:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->s(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    return-void
.end method
