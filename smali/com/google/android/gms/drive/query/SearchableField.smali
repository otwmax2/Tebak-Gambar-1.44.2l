###### Class com.google.android.gms.drive.query.SearchableField (com.google.android.gms.drive.query.SearchableField)
.class public Lcom/google/android/gms/drive/query/SearchableField;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableMetadataField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableMetadataField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableMetadataField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableMetadataField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableMetadataField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/SearchableMetadataField<",
            "Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->G:Lcom/google/android/gms/internal/drive/zzib;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->a:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->x:Lcom/google/android/gms/internal/drive/zzhx;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->b:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->H:Lcom/google/android/gms/internal/drive/zzic;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->c:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->C:Lcom/google/android/gms/drive/metadata/internal/zzo;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->d:Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField;

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/drive/zzif;->e:Lcom/google/android/gms/internal/drive/zzil;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->e:Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->E:Lcom/google/android/gms/internal/drive/zzia;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->f:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/drive/zzif;->c:Lcom/google/android/gms/internal/drive/zzij;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->g:Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/drive/zzif;->b:Lcom/google/android/gms/internal/drive/zzih;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->h:Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->p:Lcom/google/android/gms/internal/drive/zzhw;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->i:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->c:Lcom/google/android/gms/internal/drive/zzhv;

    sput-object v0, Lcom/google/android/gms/drive/query/SearchableField;->j:Lcom/google/android/gms/drive/metadata/SearchableMetadataField;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
