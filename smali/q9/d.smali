###### Class q9.d (q9.d)
.class public Lq9/d;
.super Ljava/io/IOException;
.source "Exceptions.kt"


# instance fields
.field private final o:Ljava/io/File;

.field private final p:Ljava/io/File;

.field private final q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    const-string v0, "file"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2, p3}, Lq9/c;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lq9/d;->o:Ljava/io/File;

    .line 3
    iput-object p2, p0, Lq9/d;->p:Ljava/io/File;

    .line 4
    iput-object p3, p0, Lq9/d;->q:Ljava/lang/String;

    return-void
.end method
