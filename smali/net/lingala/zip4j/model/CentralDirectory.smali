###### Class net.lingala.zip4j.model.CentralDirectory (net.lingala.zip4j.model.CentralDirectory)
.class public Lnet/lingala/zip4j/model/CentralDirectory;
.super Ljava/lang/Object;
.source "CentralDirectory.java"


# instance fields
.field private a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .registers 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b(Ljava/util/ArrayList;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    return-void
.end method
