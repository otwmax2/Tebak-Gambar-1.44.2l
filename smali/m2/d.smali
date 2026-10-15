###### Class m2.d (m2.d)
.class public Lm2/d;
.super Ljava/lang/Object;
.source "StreamFileDataLoadProvider.java"

# interfaces
.implements Ls2/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm2/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls2/b<",
        "Ljava/io/InputStream;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final q:Lm2/d$b;


# instance fields
.field private final o:Lz1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/e<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lz1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/b<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lm2/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm2/d$b;-><init>(Lm2/d$a;)V

    sput-object v0, Lm2/d;->q:Lm2/d$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lm2/a;

    invoke-direct {v0}, Lm2/a;-><init>()V

    iput-object v0, p0, Lm2/d;->o:Lz1/e;

    .line 3
    new-instance v0, Lg2/o;

    invoke-direct {v0}, Lg2/o;-><init>()V

    iput-object v0, p0, Lm2/d;->p:Lz1/b;

    return-void
.end method


# virtual methods
.method public a()Lz1/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz1/b<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm2/d;->p:Lz1/b;

    return-object v0
.end method

.method public d()Lz1/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz1/f<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lj2/b;->d()Lj2/b;

    move-result-object v0

    return-object v0
.end method

.method public f()Lz1/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz1/e<",
            "Ljava/io/InputStream;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lm2/d;->q:Lm2/d$b;

    return-object v0
.end method

.method public g()Lz1/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz1/e<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm2/d;->o:Lz1/e;

    return-object v0
.end method

###### Class m2.d.a (m2.d$a)
.class synthetic Lm2/d$a;
.super Ljava/lang/Object;
.source "StreamFileDataLoadProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class m2.d.b (m2.d$b)
.class Lm2/d$b;
.super Ljava/lang/Object;
.source "StreamFileDataLoadProvider.java"

# interfaces
.implements Lz1/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz1/e<",
        "Ljava/io/InputStream;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lm2/d$a;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lm2/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;II)Lb2/l;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Lm2/d$b;->c(Ljava/io/InputStream;II)Lb2/l;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/io/InputStream;II)Lb2/l;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II)",
            "Lb2/l<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/Error;

    const-string p2, "You cannot decode a File from an InputStream by default, try either #diskCacheStratey(DiskCacheStrategy.SOURCE) to avoid this call or #decoder(ResourceDecoder) to replace this Decoder"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method
