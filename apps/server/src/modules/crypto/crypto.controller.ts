// jwks.controller.ts
import { Controller, Get } from '@nestjs/common';
import { JwksService } from './jwks.service';

@Controller('.well-known')
export class JwksController {
  constructor(private readonly jwksService: JwksService) {}

  @Get('jwks.json')
  getJWKS() {
       console.log("Getting keys")
    return this.jwksService.getJWKS();
  }
}
