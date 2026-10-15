###### Class com.google.android.gms.drive.MetadataChangeSet (com.google.android.gms.drive.MetadataChangeSet)
.class public final Lcom/google/android/gms/drive/MetadataChangeSet;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    }
.end annotation


# static fields
.field public static final b:Lcom/google/android/gms/drive/MetadataChangeSet;


# instance fields
.field private final a:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/drive/MetadataChangeSet;

    .line 2
    invoke-static {}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->X3()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/MetadataChangeSet;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    sput-object v0, Lcom/google/android/gms/drive/MetadataChangeSet;->b:Lcom/google/android/gms/drive/MetadataChangeSet;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->Y3()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->a:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->a:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    return-object v0
.end method

###### Class com.google.android.gms.drive.MetadataChangeSet.Builder (com.google.android.gms.drive.MetadataChangeSet$Builder)
.class public Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/MetadataChangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->X3()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet$Builder;->a:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    return-void
.end method
