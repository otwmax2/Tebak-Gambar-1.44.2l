###### Class m2.c (m2.c)
.class public Lm2/c;
.super Ljava/lang/Object;
.source "FileToStreamDecoder.java"

# interfaces
.implements Lz1/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm2/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz1/e<",
        "Ljava/io/File;",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final c:Lm2/c$a;


# instance fields
.field private a:Lz1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/e<",
            "Ljava/io/InputStream;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lm2/c$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lm2/c$a;

    invoke-direct {v0}, Lm2/c$a;-><init>()V

    sput-object v0, Lm2/c;->c:Lm2/c$a;

    return-void
.end method

.method public constructor <init>(Lz1/e;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/e<",
            "Ljava/io/InputStream;",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lm2/c;->c:Lm2/c$a;

    invoke-direct {p0, p1, v0}, Lm2/c;-><init>(Lz1/e;Lm2/c$a;)V

    return-void
.end method

.method constructor <init>(Lz1/e;Lm2/c$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/e<",
            "Ljava/io/InputStream;",
            "TT;>;",
            "Lm2/c$a;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lm2/c;->a:Lz1/e;

    .line 4
    iput-object p2, p0, Lm2/c;->b:Lm2/c$a;

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
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lm2/c;->c(Ljava/io/File;II)Lb2/l;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/io/File;II)Lb2/l;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Lb2/l<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lm2/c;->b:Lm2/c$a;

    invoke-virtual {v1, p1}, Lm2/c$a;->a(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0

    .line 2
    iget-object p1, p0, Lm2/c;->a:Lz1/e;

    invoke-interface {p1, v0, p2, p3}, Lz1/e;->b(Ljava/lang/Object;II)Lb2/l;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_13

    if-eqz v0, :cond_12

    .line 3
    :try_start_f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_12

    :catch_12
    :cond_12
    return-object p1

    :catchall_13
    move-exception p1

    if-eqz v0, :cond_19

    :try_start_16
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_19

    .line 4
    :catch_19
    :cond_19
    throw p1
.end method

###### Class m2.c.a (m2.c$a)
.class Lm2/c$a;
.super Ljava/lang/Object;
.source "FileToStreamDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method
