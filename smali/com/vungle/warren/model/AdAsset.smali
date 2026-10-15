###### Class com.vungle.warren.model.AdAsset (com.vungle.warren.model.AdAsset)
.class public Lcom/vungle/warren/model/AdAsset;
.super Ljava/lang/Object;
.source "AdAsset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/model/AdAsset$ErrorType;,
        Lcom/vungle/warren/model/AdAsset$FileType;,
        Lcom/vungle/warren/model/AdAsset$Status;
    }
.end annotation


# instance fields
.field a:I

.field public final adIdentifier:Ljava/lang/String;

.field public fileSize:J

.field public fileType:I

.field public final identifier:Ljava/lang/String;

.field public final localPath:Ljava/lang/String;

.field public parentId:Ljava/lang/String;

.field public retryCount:I

.field public final serverPath:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vungle/warren/model/AdAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p4, p0, Lcom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/vungle/warren/model/AdAsset;->adIdentifier:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    const-wide/16 p1, -0x1

    .line 7
    iput-wide p1, p0, Lcom/vungle/warren/model/AdAsset;->fileSize:J

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/vungle/warren/model/AdAsset;->retryCount:I

    .line 9
    iput p1, p0, Lcom/vungle/warren/model/AdAsset;->a:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_92

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_92

    .line 2
    :cond_13
    check-cast p1, Lcom/vungle/warren/model/AdAsset;

    .line 3
    iget v2, p0, Lcom/vungle/warren/model/AdAsset;->status:I

    iget v3, p1, Lcom/vungle/warren/model/AdAsset;->status:I

    if-eq v2, v3, :cond_1c

    return v1

    .line 4
    :cond_1c
    iget v2, p0, Lcom/vungle/warren/model/AdAsset;->fileType:I

    iget v3, p1, Lcom/vungle/warren/model/AdAsset;->fileType:I

    if-eq v2, v3, :cond_23

    return v1

    .line 5
    :cond_23
    iget-wide v2, p0, Lcom/vungle/warren/model/AdAsset;->fileSize:J

    iget-wide v4, p1, Lcom/vungle/warren/model/AdAsset;->fileSize:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2c

    return v1

    .line 6
    :cond_2c
    iget v2, p0, Lcom/vungle/warren/model/AdAsset;->retryCount:I

    iget v3, p1, Lcom/vungle/warren/model/AdAsset;->retryCount:I

    if-eq v2, v3, :cond_33

    return v1

    .line 7
    :cond_33
    iget v2, p0, Lcom/vungle/warren/model/AdAsset;->a:I

    iget v3, p1, Lcom/vungle/warren/model/AdAsset;->a:I

    if-eq v2, v3, :cond_3a

    return v1

    .line 8
    :cond_3a
    iget-object v2, p0, Lcom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    if-eqz v2, :cond_47

    iget-object v3, p1, Lcom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    goto :goto_4b

    :cond_47
    iget-object v2, p1, Lcom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    if-eqz v2, :cond_4c

    :goto_4b
    return v1

    .line 9
    :cond_4c
    iget-object v2, p0, Lcom/vungle/warren/model/AdAsset;->adIdentifier:Ljava/lang/String;

    if-eqz v2, :cond_59

    iget-object v3, p1, Lcom/vungle/warren/model/AdAsset;->adIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    goto :goto_5d

    :cond_59
    iget-object v2, p1, Lcom/vungle/warren/model/AdAsset;->adIdentifier:Ljava/lang/String;

    if-eqz v2, :cond_5e

    :goto_5d
    return v1

    .line 10
    :cond_5e
    iget-object v2, p0, Lcom/vungle/warren/model/AdAsset;->parentId:Ljava/lang/String;

    if-eqz v2, :cond_6b

    iget-object v3, p1, Lcom/vungle/warren/model/AdAsset;->parentId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    goto :goto_6f

    :cond_6b
    iget-object v2, p1, Lcom/vungle/warren/model/AdAsset;->parentId:Ljava/lang/String;

    if-eqz v2, :cond_70

    :goto_6f
    return v1

    .line 11
    :cond_70
    iget-object v2, p0, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    if-eqz v2, :cond_7d

    iget-object v3, p1, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_82

    goto :goto_81

    :cond_7d
    iget-object v2, p1, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    if-eqz v2, :cond_82

    :goto_81
    return v1

    .line 12
    :cond_82
    iget-object v2, p0, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    iget-object p1, p1, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    if-eqz v2, :cond_8d

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_91

    :cond_8d
    if-nez p1, :cond_90

    goto :goto_91

    :cond_90
    const/4 v0, 0x0

    :goto_91
    return v0

    :cond_92
    :goto_92
    return v1
.end method

.method public hashCode()I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/vungle/warren/model/AdAsset;->adIdentifier:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lcom/vungle/warren/model/AdAsset;->parentId:Ljava/lang/String;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v2, p0, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v2, p0, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_3c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget v1, p0, Lcom/vungle/warren/model/AdAsset;->status:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget v1, p0, Lcom/vungle/warren/model/AdAsset;->fileType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-wide v1, p0, Lcom/vungle/warren/model/AdAsset;->fileSize:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget v1, p0, Lcom/vungle/warren/model/AdAsset;->retryCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget v1, p0, Lcom/vungle/warren/model/AdAsset;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdAsset{identifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", adIdentifier=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/AdAsset;->adIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", serverPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", localPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/model/AdAsset;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fileType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/model/AdAsset;->fileType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vungle/warren/model/AdAsset;->fileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", retryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/model/AdAsset;->retryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retryTypeError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/model/AdAsset;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.warren.model.AdAsset.ErrorType (com.vungle.warren.model.AdAsset$ErrorType)
.class public interface abstract annotation Lcom/vungle/warren/model/AdAsset$ErrorType;
.super Ljava/lang/Object;
.source "AdAsset.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/AdAsset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ErrorType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CANNOT_RETRY_ERROR:I = 0x2

.field public static final CAN_RETRY_ERROR:I = 0x1

.field public static final NO_ERROR:I

###### Class com.vungle.warren.model.AdAsset.FileType (com.vungle.warren.model.AdAsset$FileType)
.class public interface abstract annotation Lcom/vungle/warren/model/AdAsset$FileType;
.super Ljava/lang/Object;
.source "AdAsset.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/AdAsset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "FileType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ASSET:I = 0x2

.field public static final ZIP:I = 0x0

.field public static final ZIP_ASSET:I = 0x1

###### Class com.vungle.warren.model.AdAsset.Status (com.vungle.warren.model.AdAsset$Status)
.class public interface abstract annotation Lcom/vungle/warren/model/AdAsset$Status;
.super Ljava/lang/Object;
.source "AdAsset.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/AdAsset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Status"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final DOWNLOAD_FAILED:I = 0x2

.field public static final DOWNLOAD_RUNNING:I = 0x1

.field public static final DOWNLOAD_SUCCESS:I = 0x3

.field public static final NEW:I = 0x0

.field public static final PROCESSED:I = 0x4
