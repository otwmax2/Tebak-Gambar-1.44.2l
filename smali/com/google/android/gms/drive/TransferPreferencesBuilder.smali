###### Class com.google.android.gms.drive.TransferPreferencesBuilder (com.google.android.gms.drive.TransferPreferencesBuilder)
.class public Lcom/google/android/gms/drive/TransferPreferencesBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/google/android/gms/drive/TransferPreferences;


# instance fields
.field private a:I

.field private b:Z

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;

    const/4 v1, 0x1

    const/16 v2, 0x100

    invoke-direct {v0, v1, v1, v2}, Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;-><init>(IZI)V

    sput-object v0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->d:Lcom/google/android/gms/drive/TransferPreferences;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->d:Lcom/google/android/gms/drive/TransferPreferences;

    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/TransferPreferencesBuilder;-><init>(Lcom/google/android/gms/drive/TransferPreferences;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/FileUploadPreferences;)V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/drive/FileUploadPreferences;->y0()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->a:I

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/drive/FileUploadPreferences;->H()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->b:Z

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/drive/FileUploadPreferences;->S()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/TransferPreferences;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/drive/TransferPreferences;->w1()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->a:I

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/drive/TransferPreferences;->H()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->b:Z

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/drive/TransferPreferences;->S()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->c:I

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/drive/TransferPreferences;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;

    iget v1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->a:I

    iget-boolean v2, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->b:Z

    iget v3, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder;->c:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;-><init>(IZI)V

    return-object v0
.end method

###### Class com.google.android.gms.drive.TransferPreferencesBuilder.a (com.google.android.gms.drive.TransferPreferencesBuilder$a)
.class final Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/TransferPreferences;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/TransferPreferencesBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final o:I

.field private final p:Z

.field private final q:I


# direct methods
.method constructor <init>(IZI)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;->o:I

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;->p:Z

    .line 4
    iput p3, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;->q:I

    return-void
.end method


# virtual methods
.method public final H()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;->p:Z

    return v0
.end method

.method public final S()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;->q:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_25

    .line 1
    const-class v2, Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_25

    .line 2
    :cond_10
    check-cast p1, Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;

    .line 3
    iget v2, p1, Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;->o:I

    iget v3, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;->o:I

    if-ne v2, v3, :cond_25

    iget-boolean v2, p1, Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;->p:Z

    iget-boolean v3, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;->p:Z

    if-ne v2, v3, :cond_25

    iget p1, p1, Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;->q:I

    iget v2, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;->q:I

    if-ne p1, v2, :cond_25

    return v0

    :cond_25
    :goto_25
    return v1
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;->p:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;->o:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;->p:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "NetworkPreference: %s, IsRoamingAllowed %s, BatteryUsagePreference %s"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w1()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/drive/TransferPreferencesBuilder$a;->o:I

    return v0
.end method
