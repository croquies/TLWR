import {Service} from 'typedi';
import {createClient, SupabaseClient} from '@supabase/supabase-js';
import ConfigService from './ConfigService';

@Service()
export default class SupabaseService {
  public supabase: SupabaseClient;

  constructor(config: ConfigService) {
    this.supabase = createClient(config.tlwr_api_url, config.tlwr_secret);
  }
}
