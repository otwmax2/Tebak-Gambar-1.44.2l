###### Class f8.o (f8.o)
.class Lf8/o;
.super Lf8/g;
.source "MediaStoreRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf8/o$a;
    }
.end annotation


# static fields
.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "orientation"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf8/o;->b:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lf8/g;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static k(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_2
    sget-object v4, Lf8/o;->b:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_1e

    .line 3
    :cond_16
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_1a} :catch_2b
    .catchall {:try_start_2 .. :try_end_1a} :catchall_24

    .line 4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return p0

    :cond_1e
    :goto_1e
    if-eqz v1, :cond_23

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_23
    return v0

    :catchall_24
    move-exception p0

    if-eqz v1, :cond_2a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2a
    throw p0

    :catch_2b
    nop

    if-eqz v1, :cond_31

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_31
    return v0
.end method

.method static l(II)Lf8/o$a;
    .registers 4

    .line 1
    sget-object v0, Lf8/o$a;->r:Lf8/o$a;

    iget v1, v0, Lf8/o$a;->p:I

    if-gt p0, v1, :cond_b

    iget v1, v0, Lf8/o$a;->q:I

    if-gt p1, v1, :cond_b

    return-object v0

    .line 2
    :cond_b
    sget-object v0, Lf8/o$a;->s:Lf8/o$a;

    iget v1, v0, Lf8/o$a;->p:I

    if-gt p0, v1, :cond_16

    iget p0, v0, Lf8/o$a;->q:I

    if-gt p1, p0, :cond_16

    return-object v0

    .line 3
    :cond_16
    sget-object p0, Lf8/o$a;->t:Lf8/o$a;

    return-object p0
.end method


# virtual methods
.method public c(Lf8/w;)Z
    .registers 4

    .line 1
    iget-object p1, p1, Lf8/w;->d:Landroid/net/Uri;

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v0, "media"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method

.method public f(Lf8/w;I)Lf8/y$a;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p1

    move-object/from16 v7, p0

    .line 1
    iget-object v0, v7, Lf8/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 2
    iget-object v0, v6, Lf8/w;->d:Landroid/net/Uri;

    invoke-static {v8, v0}, Lf8/o;->k(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v9

    .line 3
    iget-object v0, v6, Lf8/w;->d:Landroid/net/Uri;

    invoke-virtual {v8, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x1

    if-eqz v0, :cond_23

    const-string v1, "video/"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v11, 0x1

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 5
    :goto_25
    invoke-virtual/range {p1 .. p1}, Lf8/w;->c()Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_80

    .line 6
    iget v0, v6, Lf8/w;->h:I

    iget v1, v6, Lf8/w;->i:I

    invoke-static {v0, v1}, Lf8/o;->l(II)Lf8/o$a;

    move-result-object v13

    if-nez v11, :cond_46

    .line 7
    sget-object v0, Lf8/o$a;->t:Lf8/o$a;

    if-ne v13, v0, :cond_46

    .line 8
    new-instance v0, Lf8/y$a;

    invoke-virtual/range {p0 .. p1}, Lf8/g;->j(Lf8/w;)Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lf8/t$e;->q:Lf8/t$e;

    invoke-direct {v0, v12, v1, v2, v9}, Lf8/y$a;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lf8/t$e;I)V

    return-object v0

    .line 9
    :cond_46
    iget-object v0, v6, Lf8/w;->d:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 10
    invoke-static/range {p1 .. p1}, Lf8/y;->d(Lf8/w;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    .line 11
    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 12
    iget v0, v6, Lf8/w;->h:I

    iget v1, v6, Lf8/w;->i:I

    iget v2, v13, Lf8/o$a;->p:I

    iget v3, v13, Lf8/o$a;->q:I

    move-object v4, v5

    move-object v10, v5

    move-object/from16 v5, p1

    invoke-static/range {v0 .. v5}, Lf8/y;->a(IIIILandroid/graphics/BitmapFactory$Options;Lf8/w;)V

    if-eqz v11, :cond_70

    .line 13
    sget-object v0, Lf8/o$a;->t:Lf8/o$a;

    if-ne v13, v0, :cond_69

    const/4 v0, 0x1

    goto :goto_6b

    :cond_69
    iget v0, v13, Lf8/o$a;->o:I

    .line 14
    :goto_6b
    invoke-static {v8, v14, v15, v0, v10}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_76

    .line 15
    :cond_70
    iget v0, v13, Lf8/o$a;->o:I

    .line 16
    invoke-static {v8, v14, v15, v0, v10}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_76
    if-eqz v0, :cond_80

    .line 17
    new-instance v1, Lf8/y$a;

    sget-object v2, Lf8/t$e;->q:Lf8/t$e;

    invoke-direct {v1, v0, v12, v2, v9}, Lf8/y$a;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lf8/t$e;I)V

    return-object v1

    .line 18
    :cond_80
    new-instance v0, Lf8/y$a;

    invoke-virtual/range {p0 .. p1}, Lf8/g;->j(Lf8/w;)Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lf8/t$e;->q:Lf8/t$e;

    invoke-direct {v0, v12, v1, v2, v9}, Lf8/y$a;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lf8/t$e;I)V

    return-object v0
.end method

###### Class f8.o.a (f8.o$a)
.class final enum Lf8/o$a;
.super Ljava/lang/Enum;
.source "MediaStoreRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf8/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf8/o$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lf8/o$a;

.field public static final enum s:Lf8/o$a;

.field public static final enum t:Lf8/o$a;

.field private static final synthetic u:[Lf8/o$a;


# instance fields
.field final o:I

.field final p:I

.field final q:I


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .line 1
    new-instance v6, Lf8/o$a;

    const-string v1, "MICRO"

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0x60

    const/16 v5, 0x60

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lf8/o$a;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lf8/o$a;->r:Lf8/o$a;

    .line 2
    new-instance v0, Lf8/o$a;

    const-string v8, "MINI"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/16 v11, 0x200

    const/16 v12, 0x180

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lf8/o$a;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lf8/o$a;->s:Lf8/o$a;

    .line 3
    new-instance v1, Lf8/o$a;

    const-string v14, "FULL"

    const/4 v15, 0x2

    const/16 v16, 0x2

    const/16 v17, -0x1

    const/16 v18, -0x1

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lf8/o$a;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lf8/o$a;->t:Lf8/o$a;

    const/4 v2, 0x3

    new-array v2, v2, [Lf8/o$a;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .line 4
    sput-object v2, Lf8/o$a;->u:[Lf8/o$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lf8/o$a;->o:I

    .line 3
    iput p4, p0, Lf8/o$a;->p:I

    .line 4
    iput p5, p0, Lf8/o$a;->q:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lf8/o$a;
    .registers 2

    .line 1
    const-class v0, Lf8/o$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf8/o$a;

    return-object p0
.end method

.method public static values()[Lf8/o$a;
    .registers 1

    .line 1
    sget-object v0, Lf8/o$a;->u:[Lf8/o$a;

    invoke-virtual {v0}, [Lf8/o$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf8/o$a;

    return-object v0
.end method
