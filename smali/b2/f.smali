###### Class b2.f (b2.f)
.class Lb2/f;
.super Ljava/lang/Object;
.source "EngineKey.java"

# interfaces
.implements Lz1/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:Lz1/e;

.field private final e:Lz1/e;

.field private final f:Lz1/g;

.field private final g:Lz1/f;

.field private final h:Lp2/c;

.field private final i:Lz1/b;

.field private final j:Lz1/c;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Lz1/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lz1/c;IILz1/e;Lz1/e;Lz1/g;Lz1/f;Lp2/c;Lz1/b;)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb2/f;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lb2/f;->j:Lz1/c;

    .line 4
    iput p3, p0, Lb2/f;->b:I

    .line 5
    iput p4, p0, Lb2/f;->c:I

    .line 6
    iput-object p5, p0, Lb2/f;->d:Lz1/e;

    .line 7
    iput-object p6, p0, Lb2/f;->e:Lz1/e;

    .line 8
    iput-object p7, p0, Lb2/f;->f:Lz1/g;

    .line 9
    iput-object p8, p0, Lb2/f;->g:Lz1/f;

    .line 10
    iput-object p9, p0, Lb2/f;->h:Lp2/c;

    .line 11
    iput-object p10, p0, Lb2/f;->i:Lz1/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lb2/f;->b:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lb2/f;->c:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 2
    iget-object v1, p0, Lb2/f;->j:Lz1/c;

    invoke-interface {v1, p1}, Lz1/c;->a(Ljava/security/MessageDigest;)V

    .line 3
    iget-object v1, p0, Lb2/f;->a:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 4
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 5
    iget-object v0, p0, Lb2/f;->d:Lz1/e;

    const-string v1, ""

    if-eqz v0, :cond_34

    invoke-interface {v0}, Lz1/e;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    :cond_34
    move-object v0, v1

    :goto_35
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 6
    iget-object v0, p0, Lb2/f;->e:Lz1/e;

    if-eqz v0, :cond_45

    invoke-interface {v0}, Lz1/e;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    :cond_45
    move-object v0, v1

    :goto_46
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 7
    iget-object v0, p0, Lb2/f;->f:Lz1/g;

    if-eqz v0, :cond_56

    invoke-interface {v0}, Lz1/g;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_57

    :cond_56
    move-object v0, v1

    :goto_57
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 8
    iget-object v0, p0, Lb2/f;->g:Lz1/f;

    if-eqz v0, :cond_67

    invoke-interface {v0}, Lz1/b;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_68

    :cond_67
    move-object v0, v1

    :goto_68
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 9
    iget-object v0, p0, Lb2/f;->i:Lz1/b;

    if-eqz v0, :cond_77

    invoke-interface {v0}, Lz1/b;->a()Ljava/lang/String;

    move-result-object v1

    :cond_77
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public b()Lz1/c;
    .registers 4

    .line 1
    iget-object v0, p0, Lb2/f;->m:Lz1/c;

    if-nez v0, :cond_f

    .line 2
    new-instance v0, Lb2/k;

    iget-object v1, p0, Lb2/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lb2/f;->j:Lz1/c;

    invoke-direct {v0, v1, v2}, Lb2/k;-><init>(Ljava/lang/String;Lz1/c;)V

    iput-object v0, p0, Lb2/f;->m:Lz1/c;

    .line 3
    :cond_f
    iget-object v0, p0, Lb2/f;->m:Lz1/c;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_118

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_118

    .line 2
    :cond_13
    check-cast p1, Lb2/f;

    .line 3
    iget-object v2, p0, Lb2/f;->a:Ljava/lang/String;

    iget-object v3, p1, Lb2/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    return v1

    .line 4
    :cond_20
    iget-object v2, p0, Lb2/f;->j:Lz1/c;

    iget-object v3, p1, Lb2/f;->j:Lz1/c;

    invoke-interface {v2, v3}, Lz1/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    return v1

    .line 5
    :cond_2b
    iget v2, p0, Lb2/f;->c:I

    iget v3, p1, Lb2/f;->c:I

    if-eq v2, v3, :cond_32

    return v1

    .line 6
    :cond_32
    iget v2, p0, Lb2/f;->b:I

    iget v3, p1, Lb2/f;->b:I

    if-eq v2, v3, :cond_39

    return v1

    .line 7
    :cond_39
    iget-object v2, p0, Lb2/f;->f:Lz1/g;

    if-nez v2, :cond_3f

    const/4 v3, 0x1

    goto :goto_40

    :cond_3f
    const/4 v3, 0x0

    :goto_40
    iget-object v4, p1, Lb2/f;->f:Lz1/g;

    if-nez v4, :cond_46

    const/4 v4, 0x1

    goto :goto_47

    :cond_46
    const/4 v4, 0x0

    :goto_47
    xor-int/2addr v3, v4

    if-eqz v3, :cond_4b

    return v1

    :cond_4b
    if-eqz v2, :cond_5e

    .line 8
    invoke-interface {v2}, Lz1/g;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lb2/f;->f:Lz1/g;

    invoke-interface {v3}, Lz1/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    return v1

    .line 9
    :cond_5e
    iget-object v2, p0, Lb2/f;->e:Lz1/e;

    if-nez v2, :cond_64

    const/4 v3, 0x1

    goto :goto_65

    :cond_64
    const/4 v3, 0x0

    :goto_65
    iget-object v4, p1, Lb2/f;->e:Lz1/e;

    if-nez v4, :cond_6b

    const/4 v4, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v4, 0x0

    :goto_6c
    xor-int/2addr v3, v4

    if-eqz v3, :cond_70

    return v1

    :cond_70
    if-eqz v2, :cond_83

    .line 10
    invoke-interface {v2}, Lz1/e;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lb2/f;->e:Lz1/e;

    invoke-interface {v3}, Lz1/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_83

    return v1

    .line 11
    :cond_83
    iget-object v2, p0, Lb2/f;->d:Lz1/e;

    if-nez v2, :cond_89

    const/4 v3, 0x1

    goto :goto_8a

    :cond_89
    const/4 v3, 0x0

    :goto_8a
    iget-object v4, p1, Lb2/f;->d:Lz1/e;

    if-nez v4, :cond_90

    const/4 v4, 0x1

    goto :goto_91

    :cond_90
    const/4 v4, 0x0

    :goto_91
    xor-int/2addr v3, v4

    if-eqz v3, :cond_95

    return v1

    :cond_95
    if-eqz v2, :cond_a8

    .line 12
    invoke-interface {v2}, Lz1/e;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lb2/f;->d:Lz1/e;

    invoke-interface {v3}, Lz1/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a8

    return v1

    .line 13
    :cond_a8
    iget-object v2, p0, Lb2/f;->g:Lz1/f;

    if-nez v2, :cond_ae

    const/4 v3, 0x1

    goto :goto_af

    :cond_ae
    const/4 v3, 0x0

    :goto_af
    iget-object v4, p1, Lb2/f;->g:Lz1/f;

    if-nez v4, :cond_b5

    const/4 v4, 0x1

    goto :goto_b6

    :cond_b5
    const/4 v4, 0x0

    :goto_b6
    xor-int/2addr v3, v4

    if-eqz v3, :cond_ba

    return v1

    :cond_ba
    if-eqz v2, :cond_cd

    .line 14
    invoke-interface {v2}, Lz1/b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lb2/f;->g:Lz1/f;

    invoke-interface {v3}, Lz1/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cd

    return v1

    .line 15
    :cond_cd
    iget-object v2, p0, Lb2/f;->h:Lp2/c;

    if-nez v2, :cond_d3

    const/4 v3, 0x1

    goto :goto_d4

    :cond_d3
    const/4 v3, 0x0

    :goto_d4
    iget-object v4, p1, Lb2/f;->h:Lp2/c;

    if-nez v4, :cond_da

    const/4 v4, 0x1

    goto :goto_db

    :cond_da
    const/4 v4, 0x0

    :goto_db
    xor-int/2addr v3, v4

    if-eqz v3, :cond_df

    return v1

    :cond_df
    if-eqz v2, :cond_f2

    .line 16
    invoke-interface {v2}, Lp2/c;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lb2/f;->h:Lp2/c;

    invoke-interface {v3}, Lp2/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f2

    return v1

    .line 17
    :cond_f2
    iget-object v2, p0, Lb2/f;->i:Lz1/b;

    if-nez v2, :cond_f8

    const/4 v3, 0x1

    goto :goto_f9

    :cond_f8
    const/4 v3, 0x0

    :goto_f9
    iget-object v4, p1, Lb2/f;->i:Lz1/b;

    if-nez v4, :cond_ff

    const/4 v4, 0x1

    goto :goto_100

    :cond_ff
    const/4 v4, 0x0

    :goto_100
    xor-int/2addr v3, v4

    if-eqz v3, :cond_104

    return v1

    :cond_104
    if-eqz v2, :cond_117

    .line 18
    invoke-interface {v2}, Lz1/b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lb2/f;->i:Lz1/b;

    invoke-interface {p1}, Lz1/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_117

    return v1

    :cond_117
    return v0

    :cond_118
    :goto_118
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget v0, p0, Lb2/f;->l:I

    if-nez v0, :cond_96

    .line 2
    iget-object v0, p0, Lb2/f;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lb2/f;->l:I

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lb2/f;->j:Lz1/c;

    invoke-interface {v1}, Lz1/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lb2/f;->l:I

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget v1, p0, Lb2/f;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lb2/f;->l:I

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Lb2/f;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lb2/f;->l:I

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lb2/f;->d:Lz1/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    invoke-interface {v1}, Lz1/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    add-int/2addr v0, v1

    iput v0, p0, Lb2/f;->l:I

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, Lb2/f;->e:Lz1/e;

    if-eqz v1, :cond_48

    invoke-interface {v1}, Lz1/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_49

    :cond_48
    const/4 v1, 0x0

    :goto_49
    add-int/2addr v0, v1

    iput v0, p0, Lb2/f;->l:I

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lb2/f;->f:Lz1/g;

    if-eqz v1, :cond_5b

    invoke-interface {v1}, Lz1/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5c

    :cond_5b
    const/4 v1, 0x0

    :goto_5c
    add-int/2addr v0, v1

    iput v0, p0, Lb2/f;->l:I

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object v1, p0, Lb2/f;->g:Lz1/f;

    if-eqz v1, :cond_6e

    invoke-interface {v1}, Lz1/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6f

    :cond_6e
    const/4 v1, 0x0

    :goto_6f
    add-int/2addr v0, v1

    iput v0, p0, Lb2/f;->l:I

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v1, p0, Lb2/f;->h:Lp2/c;

    if-eqz v1, :cond_81

    invoke-interface {v1}, Lp2/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_82

    :cond_81
    const/4 v1, 0x0

    :goto_82
    add-int/2addr v0, v1

    iput v0, p0, Lb2/f;->l:I

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-object v1, p0, Lb2/f;->i:Lz1/b;

    if-eqz v1, :cond_93

    invoke-interface {v1}, Lz1/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_93
    add-int/2addr v0, v2

    iput v0, p0, Lb2/f;->l:I

    .line 12
    :cond_96
    iget v0, p0, Lb2/f;->l:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lb2/f;->k:Ljava/lang/String;

    if-nez v0, :cond_c4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EngineKey{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb2/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb2/f;->j:Lz1/c;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "+["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lb2/f;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lb2/f;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb2/f;->d:Lz1/e;

    const-string v4, ""

    if-eqz v3, :cond_46

    invoke-interface {v3}, Lz1/e;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_47

    :cond_46
    move-object v3, v4

    :goto_47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb2/f;->e:Lz1/e;

    if-eqz v3, :cond_5c

    invoke-interface {v3}, Lz1/e;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_5d

    :cond_5c
    move-object v3, v4

    :goto_5d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb2/f;->f:Lz1/g;

    if-eqz v3, :cond_72

    invoke-interface {v3}, Lz1/g;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_73

    :cond_72
    move-object v3, v4

    :goto_73
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb2/f;->g:Lz1/f;

    if-eqz v3, :cond_88

    invoke-interface {v3}, Lz1/b;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_89

    :cond_88
    move-object v3, v4

    :goto_89
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb2/f;->h:Lp2/c;

    if-eqz v3, :cond_9e

    invoke-interface {v3}, Lp2/c;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_9f

    :cond_9e
    move-object v3, v4

    :goto_9f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb2/f;->i:Lz1/b;

    if-eqz v1, :cond_b3

    invoke-interface {v1}, Lz1/b;->a()Ljava/lang/String;

    move-result-object v4

    :cond_b3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb2/f;->k:Ljava/lang/String;

    .line 3
    :cond_c4
    iget-object v0, p0, Lb2/f;->k:Ljava/lang/String;

    return-object v0
.end method
